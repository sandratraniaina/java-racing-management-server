CREATE TABLE "constructor" (
    "id" INT PRIMARY KEY auto_increment,
    "name" VARCHAR(32),
    "country" VARCHAR(32) DEFAULT "International"
);

CREATE TABLE "nation" (
    "id" INT PRIMARY KEY auto_increment,
    "name" VARCHAR(32)
);

CREATE TABLE "category" (
    "id" INT PRIMARY KEY auto_increment,
    "name" VARCHAR(4)
);

CREATE TABLE "driver" (
    "id" INT PRIMARY KEY auto_increment,
    "first_name" VARCHAR(16),
    "last_name" VARCHAR(32),
    "nation_id" INT,
    "constructor_id" INT,
    "category_id" INT,
    FOREIGN KEY ("nation_id") REFERENCES "nation" ("id"),
    FOREIGN KEY ("constructor_id") REFERENCES "constructor" ("id"),
    FOREIGN KEY ("category_id") REFERENCES "category" ("id")
);

CREATE TABLE "rally" (
    "id" INT PRIMARY KEY auto_increment,
    "name" VARCHAR(16),
    "start_date" DATE DEFAULT null,
    "end_date" DATE DEFAULT null,
    "location" VARCHAR(16) DEFAULT "Default Location"
);

CREATE TABLE stage (
    "id" INT PRIMARY KEY auto_increment,
    "rally_id" INT,
    "stage_number" INT,
    "name" VARCHAR(32),
    "length" FLOAT,
    "surface" VARCHAR(16) DEFAULT "Default Surface",
    FOREIGN KEY ("rally_id") REFERENCES "rally" ("id")
);

CREATE TABLE result (
    "id" INT PRIMARY KEY auto_increment,
    "rally_id" INT,
    "driver_id" INT,
    "stage_id" INT,
    "time_s" INT,
    "time_millis" INT,
    FOREIGN KEY ("rally_id") REFERENCES "rally" ("id"),
    FOREIGN KEY ("driver_id") REFERENCES "driver" ("id"),
    FOREIGN KEY ("stage_id") REFERENCES "stage" ("id")
);