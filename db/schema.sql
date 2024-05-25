CREATE TABLE "constructor" (
    "id" VARCHAR(10) DEFAULT ('CON') || LPAD(nextval('constructor_sequence')::TEXT,4,'0') PRIMARY KEY,
    "name" VARCHAR(32),
    "country" VARCHAR(32) DEFAULT 'International'
);

CREATE TABLE "nation" (
    "id" VARCHAR(10) DEFAULT ('NAT') || LPAD(nextval('nation_sequence')::TEXT,4,'0') PRIMARY KEY,
    "name" VARCHAR(32)
);

CREATE TABLE "category" (
    "id" VARCHAR(10) DEFAULT ('CAT') || LPAD(nextval('category_sequence')::TEXT,4,'0') PRIMARY KEY,
    "name" VARCHAR(4)
);

CREATE TABLE "season" (
    "id" VARCHAR(10) DEFAULT ('SEA') || LPAD(nextval('season_sequence')::TEXT,4,'0') PRIMARY KEY,
    "name" VARCHAR(4),
    "year" INT
);

CREATE TABLE "driver" (
    "id" VARCHAR(10) DEFAULT ('DRI') || LPAD(nextval('driver_sequence')::TEXT,4,'0') PRIMARY KEY,
    "first_name" VARCHAR(16),
    "last_name" VARCHAR(32),
    "nation_id" VARCHAR(10),
    "constructor_id" VARCHAR(10),
    "category_id" VARCHAR(10),
    FOREIGN KEY ("nation_id") REFERENCES "nation" ("id"),
    FOREIGN KEY ("constructor_id") REFERENCES "constructor" ("id"),
    FOREIGN KEY ("category_id") REFERENCES "category" ("id")
);

CREATE TABLE "rally" (
    "id" VARCHAR(10) DEFAULT ('RAL') || LPAD(nextval('rally_sequence')::TEXT,4,'0') PRIMARY KEY,
    "season_id" VARCHAR(10) REFERENCES "season" (id),
    "name" VARCHAR(16),
    "start_date" DATE DEFAULT null,
    "end_date" DATE DEFAULT null,
    "location" VARCHAR(16) DEFAULT 'Default Location'
);

CREATE TABLE "stage" (
    "id" VARCHAR(10) DEFAULT ('STA') || LPAD(nextval('stage_sequence')::TEXT,4,'0') PRIMARY KEY,
    "rally_id" VARCHAR(10),
    "stage_number" INT,
    "name" VARCHAR(32),
    "length" FLOAT,
    "surface" VARCHAR(16) DEFAULT 'Default Surface',
    FOREIGN KEY ("rally_id") REFERENCES "rally" ("id")
);

CREATE TABLE "result" (
    "id" VARCHAR(10) DEFAULT ('RES') || LPAD(nextval('result_sequence')::TEXT,4,'0') PRIMARY KEY,
    "rally_id" VARCHAR(10),
    "driver_id" VARCHAR(10),
    "stage_id" VARCHAR(10),
    "time_s" INT,
    "time_millis" INT,
    FOREIGN KEY ("rally_id") REFERENCES "rally" ("id"),
    FOREIGN KEY ("driver_id") REFERENCES "driver" ("id"),
    FOREIGN KEY ("stage_id") REFERENCES "stage" ("id")
);

CREATE TABLE "global_points" (
    "id" SERIAL PRIMARY KEY,
    "season_id" VARCHAR(10) REFERENCES "season"("id"),
    "value" INT DEFAULT 0
);

CREATE TABLE "power_stage_points" (
    "id" SERIAL PRIMARY KEY,
    "season_id" VARCHAR(10) REFERENCES "season"("id"),
    "value" INT DEFAULT 0
);