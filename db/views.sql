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

DROP VIEW IF EXISTS "v_driver_category_points" CASCADE;
CREATE OR REPLACE VIEW "v_driver_category_points" AS (
    SELECT 
        "dcr"."rank" AS "rank",
        "dcr"."id" AS "id",
        "dcr"."season_id" AS "season_id",
        "dcr"."category_id" AS "category_id",
        "dcr"."total_time_millis" AS "total_time_millis",
        "dcr"."total_time_s" AS "total_time_s",
        COALESCE("gp"."value", 0) AS "point"
    FROM "v_driver_category_ranking" AS "dcr"
    LEFT JOIN "global_points" AS "gp" ON "gp"."rank" = "dcr"."rank"
    LEFT JOIN "season" AS "s" ON "s"."id" = "gp"."season_id"
);

DROP VIEW IF EXISTS "v_driver_category_total_points" CASCADE;
CREATE OR REPLACE VIEW "v_driver_category_total_points" AS (
    SELECT 
        RANK() OVER (
            PARTITION BY 
                "season_id",
                "category_id"
            ORDER BY 
                SUM("total_time_millis")
        ) AS "rank",
        "season_id" AS "season_id",
        "id" AS "id",
        "category_id" AS "category_id",
        SUM("total_time_millis") AS "total_time_millis",
        SUM("total_time_s") AS "total_time_s",
        SUM("point") AS "points"
    FROM "v_driver_category_points"
    GROUP BY 
        "season_id",
        "category_id",
        "id"
    ORDER BY
        SUM("point") DESC
);

DROP VIEW IF EXISTS "v_rally_last_stage" CASCADE;
CREATE OR REPLACE VIEW "v_rally_last_stage" AS (
    SELECT 
        "rally_ids"."season_id",
        "rally_ids"."rally_id" AS "rally_id",
        "s"."id" AS "stage_id",
        "s"."stage_number" as "stage_number"
    FROM "stage" AS "s"
    INNER JOIN (
        SELECT 
            "r"."season_id" AS "season_id",
            ("rally_id"),
            MAX("stage_number") as "stage_number"
        FROM "stage"
        JOIN "rally" AS "r" ON "r"."id" = "stage"."rally_id"
        GROUP BY 
            "rally_id",
            "r"."season_id"
    ) AS "rally_ids" ON "rally_ids"."rally_id" = "s"."rally_id" AND "rally_ids".
    "stage_number" = "s"."stage_number"
    GROUP BY 
        "rally_ids"."rally_id",
        "rally_ids"."season_id",
        "s"."id"
);

DROP VIEW IF EXISTS "v_driver_power_stage_ranking" CASCADE;
CREATE OR REPLACE VIEW "v_driver_power_stage_ranking" AS (
    SELECT
        "rls"."season_id" AS "season_id",
        "rls"."stage_id" AS "stage_id",
        "d".id,
        RANK() OVER (
            PARTITION BY
                "rls"."stage_id"
            ORDER BY 
                SUM("r"."time_millis")
        ) AS "rank",
        SUM("r"."time_millis") AS "time_millis"
    FROM "v_rally_last_stage" AS "rls"
    JOIN "result" AS "r" ON "r"."stage_id" = "rls"."stage_id"
    JOIN "driver" AS "d" ON "r"."driver_id" = "d"."id"
    GROUP BY 
        "rls"."season_id",
        "rls"."stage_id", 
        "d"."id"
);

DROP VIEW IF EXISTS "v_driver_power_stage_points" CASCADE;
CREATE OR REPLACE VIEW "v_driver_power_stage_points" AS (
    SELECT 
		"psp"."season_id",
        "dpsr"."id" AS "id",
        SUM(COALESCE("psp"."value", 0)) AS "point"
    FROM "v_driver_power_stage_ranking" AS "dpsr"
    LEFT JOIN "power_stage_points" AS "psp" ON "psp"."rank" = "dpsr"."rank"
    GROUP BY 
        "dpsr"."id",
		"psp"."season_id"
);

DROP VIEW IF EXISTS "v_driver_win_count" CASCADE;
CREATE OR REPLACE VIEW "v_driver_win_count" AS (
    SELECT 
        "d"."id",
        COALESCE("won"."win_count", 0) AS "win_count"
    FROM (
        SELECT 
            "dgr"."season_id" AS "season_id",
            "dgr"."id" AS "id",
            COUNT("dgr"."id") AS "win_count"
        FROM "v_driver_global_ranking" AS "dgr"
        WHERE 
            "dgr"."rank" = 1
        GROUP BY 
            "dgr"."id",
            "dgr"."season_id"
    ) AS "won" 
    RIGHT JOIN "driver" AS "d" ON "d"."id" = "won"."id"
);

DROP VIEW IF EXISTS "v_driver_global_ps_total_points" CASCADE;
CREATE OR REPLACE VIEW "v_driver_global_ps_total_points" AS (
    SELECT 
        RANK() OVER (
            PARTITION BY
                "dgtp"."season_id"
            ORDER BY 
                "dgtp"."points" + COALESCE("dpsp"."point", 0) DESC,
                "dwc"."win_count"
        ) AS "rank",
        "dgtp"."season_id" AS "season_id",
        "dgtp"."id" AS "id",
        CONCAT("d"."first_name", "d"."last_name") AS "driver_name",
        "d"."category" AS "driver_category",
        "dwc"."win_count" AS "win_count",
        "dgtp"."points" + COALESCE("dpsp"."point", 0) AS "total_points"
    FROM "v_driver_global_total_points" AS "dgtp"
    LEFT JOIN "v_driver_power_stage_points" AS "dpsp" ON "dgtp"."id" = "dpsp"."id" AND "dgtp"."season_id" = "dpsp"."season_id"
    JOIN "v_driver_win_count" AS "dwc" ON "dgtp"."id" = "dwc"."id"
    JOIN "v_driver" AS "d" ON "d"."id" = "dgtp"."id"
    ORDER BY 
        "total_points" DESC, 
        "win_count" DESC
);