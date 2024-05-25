DROP VIEW IF EXISTS "v_driver" CASCADE;
CREATE OR REPLACE VIEW "v_driver" AS (
    SELECT
        "d"."id" AS "id",
        "d"."first_name" AS "first_name",
        "d"."last_name" AS "last_name",
        "c"."name" AS "category",
        "n"."name" AS "nation",
        "co"."name" AS "constructor"
    FROM "driver" AS "d"
    JOIN "category" AS "c" ON "c"."id" = "d"."category_id"
    JOIN "nation" AS "n" ON "n"."id" = "d"."nation_id"
    JOIN "constructor" AS "co" ON "co"."id" = "d"."constructor_id"
);

DROP VIEW IF EXISTS "v_driver_rally_time" CASCADE;
CREATE OR REPLACE VIEW "v_driver_rally_time" AS (
    SELECT 
        "d"."id" AS "id",
        "ra"."id" AS "rally_id",
        "ra"."season_id" AS "season_id",
        "d"."category_id" AS "category_id",
        SUM("r"."time_s") AS "total_time_s",
        SUM("r"."time_millis") AS "total_time_millis"
    FROM "result" AS "r" 
    JOIN "driver" AS "d" ON "r"."driver_id" = "d"."id"
    JOIN "rally" AS "ra" ON "ra"."id" = "r"."rally_id"
    GROUP BY 
        "d"."id",
        "ra"."id"
);

DROP VIEW IF EXISTS "v_driver_global_ranking" CASCADE;
CREATE OR REPLACE VIEW "v_driver_global_ranking" AS (
    SELECT 
        RANK() OVER (
            PARTITION BY 
                "dat"."rally_id"
            ORDER BY 
                "dat"."total_time_millis"
        ),
        *
    FROM "v_driver_rally_time" AS "dat"
);

DROP VIEW IF EXISTS "v_driver_global_points" CASCADE;
CREATE OR REPLACE VIEW "v_driver_global_points" AS (
    SELECT 
        "dgr"."rank" AS "rank",
        "dgr"."id" AS "id",
        "dgr"."season_id" AS "season_id",
        "dgr"."total_time_millis" AS "total_time_millis",
        "dgr"."total_time_s" AS "total_time_s",
        COALESCE("gp"."value", 0) AS "point"
    FROM "v_driver_global_ranking" AS "dgr"
    LEFT JOIN "global_points" AS "gp" ON "gp"."rank" = "dgr"."rank"
    LEFT JOIN "season" AS "s" ON "s"."id" = "gp"."season_id"
);

DROP VIEW IF EXISTS "v_driver_global_total_points" CASCADE;
CREATE OR REPLACE VIEW "v_driver_global_total_points" AS (
    SELECT 
        "id" AS "id",
        "season_id" AS "season_id",
        SUM("total_time_millis") AS "total_time_millis",
        SUM("total_time_s") AS "total_time_s",
        SUM("point") AS "points"
    FROM "v_driver_global_points" AS "dgp"
    GROUP BY 
        "season_id",
        "id"
    ORDER BY
        SUM("point") DESC
);

DROP VIEW IF EXISTS "v_driver_category_ranking" CASCADE;
CREATE OR REPLACE VIEW "v_driver_category_ranking" AS (
    SELECT 
        RANK() OVER (
            PARTITION BY 
                "dat"."rally_id",
                "dat"."category_id"
            ORDER BY 
                "dat"."total_time_millis"
        ),
        *
    FROM "v_driver_rally_time" AS "dat"
);