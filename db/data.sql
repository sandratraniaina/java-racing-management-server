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

INSERT INTO 
    "global_points" ("season_id", "rank", "value")
VALUES 
    ('SEA0001', 1, 10),
    ('SEA0001', 2, 9),
    ('SEA0001', 3, 8),
    ('SEA0001', 4, 7),
    ('SEA0001', 5, 6),
    ('SEA0001', 6, 5),
    ('SEA0001', 7, 4),
    ('SEA0001', 8, 3),
    ('SEA0001', 9, 2),
    ('SEA0001', 10, 1);

INSERT INTO 
    "power_stage_points" ("season_id", "rank", "value")
VALUES 
    ('SEA0001', 1, 5),
    ('SEA0001', 2, 4),
    ('SEA0001', 3, 3),
    ('SEA0001', 4, 2),
    ('SEA0001', 5, 1);

INSERT INTO "result" ("rally_id", "driver_id", "stage_id", "time_s", "time_millis") VALUES 
    ('RAL0001', 'DRI0001', 'STA0001', to_second('00:12:45.400'), to_second('00:12:45.400') * 1000),
    ('RAL0001', 'DRI0002', 'STA0001', to_second('00:21:15.275'), to_second('00:21:15.275') * 1000),
    ('RAL0001', 'DRI0003', 'STA0001', to_second('00:25:13.251'), to_second('00:25:13.251') * 1000),
    ('RAL0001', 'DRI0004', 'STA0001', to_second('00:16:09.169'), to_second('00:16:09.169') * 1000),
    ('RAL0001', 'DRI0005', 'STA0001', to_second('00:16:36.164'), to_second('00:16:36.164') * 1000),
    ('RAL0001', 'DRI0006', 'STA0001', to_second('00:27:48.275'), to_second('00:27:48.275') * 1000),
    
    ('RAL0001', 'DRI0001', 'STA0002', to_second('00:12:45.401'), to_second('00:12:45.401') * 1000),
    ('RAL0001', 'DRI0002', 'STA0002', to_second('00:21:15.276'), to_second('00:21:15.276') * 1000),
    ('RAL0001', 'DRI0003', 'STA0002', to_second('00:25:13.252'), to_second('00:25:13.252') * 1000),
    ('RAL0001', 'DRI0004', 'STA0002', to_second('00:16:09.170'), to_second('00:16:09.170') * 1000),
    ('RAL0001', 'DRI0005', 'STA0002', to_second('00:16:36.165'), to_second('00:16:36.165') * 1000),
    ('RAL0001', 'DRI0006', 'STA0002', to_second('00:27:48.276'), to_second('00:27:48.276') * 1000),

    ('RAL0001', 'DRI0001', 'STA0003', to_second('00:12:45.402'), to_second('00:12:45.402') * 1000),
    ('RAL0001', 'DRI0002', 'STA0003', to_second('00:21:15.277'), to_second('00:21:15.277') * 1000),
    ('RAL0001', 'DRI0003', 'STA0003', to_second('00:25:13.253'), to_second('00:25:13.253') * 1000),
    ('RAL0001', 'DRI0004', 'STA0003', to_second('00:16:09.171'), to_second('00:16:09.171') * 1000),
    ('RAL0001', 'DRI0005', 'STA0003', to_second('00:16:36.166'), to_second('00:16:36.166') * 1000),
    ('RAL0001', 'DRI0006', 'STA0003', to_second('00:27:48.277'), to_second('00:27:48.277') * 1000),

    ('RAL0001', 'DRI0001', 'STA0004', to_second('00:12:45.403'), to_second('00:12:45.403') * 1000),
    ('RAL0001', 'DRI0002', 'STA0004', to_second('00:21:15.278'), to_second('00:21:15.278') * 1000),
    ('RAL0001', 'DRI0003', 'STA0004', to_second('00:25:13.254'), to_second('00:25:13.254') * 1000),
    ('RAL0001', 'DRI0004', 'STA0004', to_second('00:16:09.172'), to_second('00:16:09.172') * 1000),
    ('RAL0001', 'DRI0005', 'STA0004', to_second('00:16:36.167'), to_second('00:16:36.167') * 1000),
    ('RAL0001', 'DRI0006', 'STA0004', to_second('00:27:48.278'), to_second('00:27:48.278') * 1000),

    ('RAL0001', 'DRI0001', 'STA0005', to_second('00:12:45.404'), to_second('00:12:45.404') * 1000),
    ('RAL0001', 'DRI0002', 'STA0005', to_second('00:21:15.279'), to_second('00:21:15.279') * 1000),
    ('RAL0001', 'DRI0003', 'STA0005', to_second('00:25:13.255'), to_second('00:25:13.255') * 1000),
    ('RAL0001', 'DRI0004', 'STA0005', to_second('00:16:09.173'), to_second('00:16:09.173') * 1000),
    ('RAL0001', 'DRI0005', 'STA0005', to_second('00:16:36.168'), to_second('00:16:36.168') * 1000),
    ('RAL0001', 'DRI0006', 'STA0005', to_second('00:27:48.279'), to_second('00:27:48.279') * 1000),

    ('RAL0001', 'DRI0001', 'STA0006', to_second('00:12:45.405'), to_second('00:12:45.405') * 1000),
    ('RAL0001', 'DRI0002', 'STA0006', to_second('00:21:15.280'), to_second('00:21:15.280') * 1000),
    ('RAL0001', 'DRI0003', 'STA0006', to_second('00:25:13.256'), to_second('00:25:13.256') * 1000),
    ('RAL0001', 'DRI0004', 'STA0006', to_second('00:16:09.174'), to_second('00:16:09.174') * 1000),
    ('RAL0001', 'DRI0005', 'STA0006', to_second('00:16:36.169'), to_second('00:16:36.169') * 1000),
    ('RAL0001', 'DRI0006', 'STA0006', to_second('00:27:48.280'), to_second('00:27:48.280') * 1000);

INSERT INTO "result" ("rally_id", "driver_id", "stage_id", "time_s", "time_millis") VALUES 
    ('RAL0002', 'DRI0001', 'STA0007', to_second('00:12:45.400'), to_second('00:12:45.400') * 1000),
    ('RAL0002', 'DRI0002', 'STA0007', to_second('00:21:15.275'), to_second('00:21:15.275') * 1000),
    ('RAL0002', 'DRI0003', 'STA0007', to_second('00:25:13.251'), to_second('00:25:13.251') * 1000),
    ('RAL0002', 'DRI0004', 'STA0007', to_second('00:16:09.169'), to_second('00:16:09.169') * 1000),
    ('RAL0002', 'DRI0005', 'STA0007', to_second('00:16:36.164'), to_second('00:16:36.164') * 1000),
    ('RAL0002', 'DRI0006', 'STA0007', to_second('00:27:48.275'), to_second('00:27:48.275') * 1000),
    
    ('RAL0002', 'DRI0001', 'STA0008', to_second('00:15:22.300'), to_second('00:15:22.300') * 1000),
    ('RAL0002', 'DRI0002', 'STA0008', to_second('00:23:18.000'), to_second('00:23:18.000') * 1000),
    ('RAL0002', 'DRI0003', 'STA0008', to_second('00:10:52.000'), to_second('00:10:52.000') * 1000),
    ('RAL0002', 'DRI0004', 'STA0008', to_second('00:17:20.172'), to_second('00:17:20.172') * 1000),
    ('RAL0002', 'DRI0005', 'STA0008', to_second('00:13:13.000'), to_second('00:13:13.000') * 1000),
    ('RAL0002', 'DRI0006', 'STA0008', to_second('00:16:17.162'), to_second('00:16:17.162') * 1000),

    ('RAL0002', 'DRI0001', 'STA0009', to_second('00:11:09.000'), to_second('00:11:09.000') * 1000),
    ('RAL0002', 'DRI0002', 'STA0009', to_second('00:12:15.735'), to_second('00:12:15.735') * 1000),
    ('RAL0002', 'DRI0003', 'STA0009', to_second('00:11:29.113'), to_second('00:11:29.113') * 1000),
    ('RAL0002', 'DRI0004', 'STA0009', to_second('00:32:29.323'), to_second('00:32:29.323') * 1000),
    ('RAL0002', 'DRI0005', 'STA0009', to_second('00:11:41.114'), to_second('00:11:41.114') * 1000),
    ('RAL0002', 'DRI0006', 'STA0009', to_second('00:15:47.155'), to_second('00:15:47.155') * 1000),

    ('RAL0002', 'DRI0001', 'STA0010', to_second('00:26:39.267'), to_second('00:26:39.267') * 1000),
    ('RAL0002', 'DRI0002', 'STA0010', to_second('00:19:46.186'), to_second('00:19:46.186') * 1000),
    ('RAL0002', 'DRI0003', 'STA0010', to_second('00:26:10.261'), to_second('00:26:10.261') * 1000),
    ('RAL0002', 'DRI0004', 'STA0010', to_second('00:22:48.225'), to_second('00:22:48.225') * 1000),
    ('RAL0002', 'DRI0005', 'STA0010', to_second('00:29:21.292'), to_second('00:29:21.292') * 1000),
    ('RAL0002', 'DRI0006', 'STA0010', to_second('00:21:53.215'), to_second('00:21:53.215') * 1000),

    ('RAL0002', 'DRI0001', 'STA0011', to_second('00:19:23.280'), to_second('00:19:23.280') * 1000),
    ('RAL0002', 'DRI0002', 'STA0011', to_second('00:24:06.446'), to_second('00:24:06.446') * 1000),
    ('RAL0002', 'DRI0003', 'STA0011', to_second('00:28:47.285'), to_second('00:28:47.285') * 1000),
    ('RAL0002', 'DRI0004', 'STA0011', to_second('00:29:10.291'), to_second('00:29:10.291') * 1000),
    ('RAL0002', 'DRI0005', 'STA0011', to_second('00:19:57.000'), to_second('00:19:57.000') * 1000),
    ('RAL0002', 'DRI0006', 'STA0011', to_second('00:27:24.272'), to_second('00:27:24.272') * 1000),

    ('RAL0002', 'DRI0001', 'STA0012', to_second('00:38:59.852'), to_second('00:38:59.852') * 1000),
    ('RAL0002', 'DRI0002', 'STA0012', to_second('00:17:55.075'), to_second('00:17:55.075') * 1000),
    ('RAL0002', 'DRI0003', 'STA0012', to_second('00:13:57.136'), to_second('00:13:57.136') * 1000),
    ('RAL0002', 'DRI0004', 'STA0012', to_second('00:34:19.342'), to_second('00:34:19.342') * 1000),
    ('RAL0002', 'DRI0005', 'STA0012', to_second('00:11:54.000'), to_second('00:11:54.000') * 1000),
    ('RAL0002', 'DRI0006', 'STA0012', to_second('00:34:48.345'), to_second('00:34:48.345') * 1000);

INSERT INTO "result" ("rally_id", "driver_id", "stage_id", "time_s", "time_millis") VALUES 
    ('RAL0003', 'DRI0001', 'STA0013', to_second('00:12:45.400'), to_second('00:12:45.400') * 1000),
    ('RAL0003', 'DRI0002', 'STA0013', to_second('00:21:15.275'), to_second('00:21:15.275') * 1000),
    ('RAL0003', 'DRI0003', 'STA0013', to_second('00:25:13.251'), to_second('00:25:13.251') * 1000),
    ('RAL0003', 'DRI0004', 'STA0013', to_second('00:16:09.169'), to_second('00:16:09.169') * 1000),
    ('RAL0003', 'DRI0005', 'STA0013', to_second('00:16:36.164'), to_second('00:16:36.164') * 1000),
    ('RAL0003', 'DRI0006', 'STA0013', to_second('00:20:48.000'), to_second('00:20:48.000') * 1000),
    
    ('RAL0003', 'DRI0001', 'STA0014', to_second('00:15:22.300'), to_second('00:15:22.300') * 1000),
    ('RAL0003', 'DRI0002', 'STA0014', to_second('00:22:18.338'), to_second('00:22:18.338') * 1000),
    ('RAL0003', 'DRI0003', 'STA0014', to_second('00:14:52.145'), to_second('00:14:52.145') * 1000),
    ('RAL0003', 'DRI0004', 'STA0014', to_second('00:17:20.172'), to_second('00:17:20.172') * 1000),
    ('RAL0003', 'DRI0005', 'STA0014', to_second('00:33:13.331'), to_second('00:33:13.331') * 1000),
    ('RAL0003', 'DRI0006', 'STA0014', to_second('00:16:17.162'), to_second('00:16:17.162') * 1000),

    ('RAL0003', 'DRI0001', 'STA0015', to_second('00:12:09.000'), to_second('00:12:09.000') * 1000),
    ('RAL0003', 'DRI0002', 'STA0015', to_second('00:12:15.735'), to_second('00:12:15.735') * 1000),
    ('RAL0003', 'DRI0003', 'STA0015', to_second('00:11:29.113'), to_second('00:11:29.113') * 1000),
    ('RAL0003', 'DRI0004', 'STA0015', to_second('00:32:29.323'), to_second('00:32:29.323') * 1000),
    ('RAL0003', 'DRI0005', 'STA0015', to_second('00:11:41.114'), to_second('00:11:41.114') * 1000),
    ('RAL0003', 'DRI0006', 'STA0015', to_second('00:15:47.155'), to_second('00:15:47.155') * 1000),

    ('RAL0003', 'DRI0001', 'STA0016', to_second('00:16:39.000'), to_second('00:16:39.000') * 1000),
    ('RAL0003', 'DRI0002', 'STA0016', to_second('00:19:46.186'), to_second('00:19:46.186') * 1000),
    ('RAL0003', 'DRI0003', 'STA0016', to_second('00:22:10.000'), to_second('00:22:10.000') * 1000),
    ('RAL0003', 'DRI0004', 'STA0016', to_second('00:22:48.225'), to_second('00:22:48.225') * 1000),
    ('RAL0003', 'DRI0005', 'STA0016', to_second('00:29:21.292'), to_second('00:29:21.292') * 1000),
    ('RAL0003', 'DRI0006', 'STA0016', to_second('00:21:53.215'), to_second('00:21:53.215') * 1000),

    ('RAL0003', 'DRI0001', 'STA0017', to_second('00:19:23.280'), to_second('00:19:23.280') * 1000),
    ('RAL0003', 'DRI0002', 'STA0017', to_second('00:24:06.446'), to_second('00:24:06.446') * 1000),
    ('RAL0003', 'DRI0003', 'STA0017', to_second('00:28:47.285'), to_second('00:28:47.285') * 1000),
    ('RAL0003', 'DRI0004', 'STA0017', to_second('00:29:10.291'), to_second('00:29:10.291') * 1000),
    ('RAL0003', 'DRI0005', 'STA0017', to_second('00:29:57.296'), to_second('00:29:57.296') * 1000),
    ('RAL0003', 'DRI0006', 'STA0017', to_second('00:27:24.272'), to_second('00:27:24.272') * 1000),

    ('RAL0003', 'DRI0001', 'STA0018', to_second('00:38:59.852'), to_second('00:38:59.852') * 1000),
    ('RAL0003', 'DRI0002', 'STA0018', to_second('00:17:55.075'), to_second('00:17:55.075') * 1000),
    ('RAL0003', 'DRI0003', 'STA0018', to_second('00:34:48.345'), to_second('00:34:48.345') * 1000),
    ('RAL0003', 'DRI0004', 'STA0018', to_second('00:34:19.342'), to_second('00:34:19.342') * 1000),
    ('RAL0003', 'DRI0005', 'STA0018', to_second('00:31:54.315'), to_second('00:31:54.315') * 1000),
    ('RAL0003', 'DRI0006', 'STA0018', to_second('00:14:48.000'), to_second('00:14:48.000') * 1000);