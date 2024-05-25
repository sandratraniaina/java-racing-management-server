INSERT INTO 
    "constructor" ("name", "country") 
VALUES
    ('M-Sport Ford World Rally Team', 'United Kingdom'),
    ('Hyundai Motorsport GmbH', 'Germany'),
    ('Toyota Gazoo Racing WRT', 'Japan'),
    ('Škoda Motorsport', 'Czech Republic'),
    ('Monster Energy Yamaha Rally Team', 'Japan');

INSERT INTO
    "category" ("name")
VALUES
    ('CT-A'),
    ('CT-B'),
    ('CT-C'),
    ('CT-D'),
    ('CT-E');

INSERT INTO
    "nation" ("name")
VALUES
    ('Finland'),
    ('France'),
    ('Great Britain'),
    ('Japan'),
    ('Germany'),
    ('Estonia'),
    ('Italy'),
    ('Spain'),
    ('Sweden'),
    ('New Zealand');

INSERT INTO "driver" ("first_name", "last_name", "nation_id", "constructor_id", "category_id") VALUES
    ('Driver', '1', 'NAT0001', 'CON0001', 'CAT0002'),
    ('Driver', '2', 'NAT0002', 'CON0002', 'CAT0001'),
    ('Driver', '3', 'NAT0003', 'CON0003', 'CAT0001'),
    ('Driver', '4', 'NAT0004', 'CON0004', 'CAT0002'),
    ('Driver', '5', 'NAT0005', 'CON0005', 'CAT0002'),
    ('Driver', '6', 'NAT0005', 'CON0001', 'CAT0001');

INSERT INTO "season" ("name", "year") VALUES
    ('S01', 2024);

INSERT INTO "rally" ("season_id", "name", "start_date", "end_date") VALUES
    ('SEA0001', 'Rally 1', '2024-01-01', '2024-12-31'),
    ('SEA0001', 'Rally 2', '2024-01-01', '2024-12-31'),
    ('SEA0001', 'Rally 3', '2024-01-01', '2024-12-31');

INSERT INTO "stage" ("rally_id", "stage_number", "name", "length") VALUES
    ('RAL0001', 1, 'Stage n01', 0),
    ('RAL0001', 2, 'Stage n02', 0),
    ('RAL0001', 3, 'Stage n03', 0),
    ('RAL0001', 4, 'Stage n04', 0),
    ('RAL0001', 5, 'Stage n05', 0),
    ('RAL0001', 6, 'Stage n06', 0);

INSERT INTO "stage" ("rally_id", "stage_number", "name", "length") VALUES
    ('RAL0002', 1, 'Stage n01', 0),
    ('RAL0002', 2, 'Stage n02', 0),
    ('RAL0002', 3, 'Stage n03', 0),
    ('RAL0002', 4, 'Stage n04', 0),
    ('RAL0002', 5, 'Stage n05', 0),
    ('RAL0002', 6, 'Stage n06', 0);

INSERT INTO "stage" ("rally_id", "stage_number", "name", "length") VALUES
    ('RAL0003', 1, 'Stage n01', 0),
    ('RAL0003', 2, 'Stage n02', 0),
    ('RAL0003', 3, 'Stage n03', 0),
    ('RAL0003', 4, 'Stage n04', 0),
    ('RAL0003', 5, 'Stage n05', 0),
    ('RAL0003', 6, 'Stage n06', 0);