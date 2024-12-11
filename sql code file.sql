CREATE TABLE TEAM (
    team_id INT PRIMARY KEY,
    name TEXT NOT NULL,
    coach_name TEXT,
    captain_id INT,
    captain_name TEXT,
    dept TEXT
);

CREATE TABLE PLAYER (
    player_id INT AUTO_INCREMENT PRIMARY KEY,
    player_name TEXT NOT NULL,
    position TEXT,
    age INT,
    team_id INT,
    FOREIGN KEY (team_id) REFERENCES team(team_id)
);


CREATE TABLE MATCHES (
    match_id INT PRIMARY KEY,
    team_1_id INT NOT NULL,
    team_2_id INT NOT NULL,
    match_date DATE,
    FOREIGN KEY (team_1_id) REFERENCES team(team_id),
    FOREIGN KEY (team_2_id) REFERENCES team(team_id)
);


CREATE TABLE PLAYER_STATISTICS (
    statistics_id INT PRIMARY KEY,
    player_id INT,
    goals INT DEFAULT 0,
    assists INT DEFAULT 0,
    yellow_card INT DEFAULT 0,
    red_card INT DEFAULT 0,
    FOREIGN KEY (player_id) REFERENCES player(player_id)
);


CREATE TABLE LEAGUE_STANDINGS (
    standing_id INT PRIMARY KEY,
    team_id INT,
    played INT DEFAULT 0,
    won INT DEFAULT 0,
    drawn INT DEFAULT 0,
    lost INT DEFAULT 0,
    points INT DEFAULT 0,
    goals_scored INT DEFAULT 0,
    goals_conceded INT DEFAULT 0,
    FOREIGN KEY (team_id) REFERENCES team(team_id)
);


insert INTO TEAM (team_id, name, coach_name, captain_id, captain_name, dept) VALUES
(1001, 'PHARM BOTS', 'ATIK AHMED', 101, 'NAYEER', 'PHARMACY'),
(1002, 'BBA GIANTS', 'MR. HARPOON', 102, 'OCTO', 'BBA'),
(1003, 'ENGLISH KNIGHTS', 'SHAHNEWAZ', 103, 'MANSIB', 'ENGLISH'),
(1004, 'EE-THUNDERBOLTS', 'JAMAL AHMED', 104,'MATIN', 'EEE'),
(1005, 'CE WARRIORS', 'TOWHID HASAN', 105, 'MEHEDI', 'CE'),
(1006, 'CSE STARS', 'ALIF RUSLAN', 106, 'SANI', 'CSE');

select * FROM TEAM;

insert INTO PLAYER (player_id, player_name,position, age, team_id) VALUES
(2001, 'MIFTAH', 'LW', 22, 1001),
(2002, 'FAHIM', 'RB', 23, 1001),
(2003, 'ANONDO', 'CM', 24, 1001),
(2004, 'UMAM', 'RW', 25, 1001),
(2005, 'NAFIUR', 'CB', 25, 1001),
(2006, 'SALMAN', 'CB', 24, 1001),
(2007, 'NADID', 'LW', 20, 1001),
(2008, 'REDWAN', 'CM', 23, 1001),
(2009, 'ABDULLAH', 'CF', 19, 1001),
(2010, 'RUDDRO', 'GK', 21, 1001),
(2011, 'NAYEER', 'CM', 22, 1001),
(2012, 'SOURAV', 'GK', 20, 1002),
(2013, 'SADAT', 'CB', 21, 1002),
(2014, 'ANIK', 'CB', 21, 1002),
(2015, 'YASIF', 'RB', 23, 1002),
(2016, 'RAKIB', 'LB', 22, 1002),
(2017, 'NIPUN', 'CM', 23, 1002),
(2018, 'ZAKER', 'CF', 21, 1002),
(2019, 'OPU', 'CM', 24, 1002),
(2020, 'ARGHO', 'ST', 25, 1002),
(2021, 'ARNOB', 'RB', 25, 1002),
(2022, 'OCTO', 'LW', 25, 1002),
(2023, 'ZAKI', 'LB', 22, 1003),
(2024, 'SHAMS', 'LW', 23, 1003),
(2025, 'SHOJIB', 'RB', 24, 1003),
(2026, 'MITHUN', 'CM', 25, 1003),
(2027, 'SHIBLY', 'CM', 20, 1003),
(2028, 'AFNAN', 'CB', 21, 1003),
(2029, 'MAHDI', 'CB', 22, 1003),
(2030, 'ISHAM', 'RW', 23, 1003),
(2031, 'IFTI', 'GK', 24, 1003),
(2032, 'TAHMID', 'CM', 25, 1003),
(2033, 'MANSIB', 'ST', 26, 1003),
(2034, 'PARVEZ', 'RW', 20, 1004),
(2035, 'SUMON', 'CB', 26, 1004),
(2036, 'NIROB', 'LB', 22, 1004),
(2037, 'ALAM', 'RB', 25, 1004),
(2038, 'RAZZAK', 'GK', 24, 1004),
(2039, 'KABIR', 'ST', 25, 1004),
(2040, 'KAMRUL', 'CM', 26, 1004),
(2041, 'ALAMIN', 'LW', 25, 1004),
(2042, 'ABDUL', 'CM', 24, 1004),
(2043, 'KUMAR', 'CB', 23, 1004),
(2044, 'MATIN', 'CAM', 22, 1004),
(2045, 'JIM', 'RW', 20, 1005),
(2046, 'AKIF', 'CB', 22, 1005),
(2047, 'ANIM', 'LB', 24, 1005),
(2048, 'IRFAN', 'RB', 22, 1005),
(2049, 'SUDIPTO', 'GK', 21, 1005),
(2050, 'NAZMUL', 'ST', 22, 1005),
(2051, 'USAYED', 'CM', 24, 1005),
(2052, 'YAMIN', 'LW', 25, 1005),
(2053, 'RAIYAN', 'CM', 25, 1005),
(2054, 'NIAZ', 'CB', 25, 1005),
(2055, 'MEHEDI', 'CM', 25, 1005),
(2056, 'SAYAD', 'RW', 21, 1006),
(2057, 'JOY', 'CB', 22, 1006),
(2058, 'RAHAT', 'LB', 25, 1006),
(2059, 'LEON', 'RB', 23, 1006),
(2060, 'JIBON', 'GK', 24, 1006),
(2061, 'MAHIR', 'ST', 25, 1006),
(2062, 'RAJON', 'CM', 22, 1006),
(2063, 'NOMAN', 'LW', 24, 1006),
(2064, 'SANI', 'CM', 22, 1006),
(2065, 'MINHAZ', 'CB', 23, 1006),
(2066, 'WASI', 'CAM', 25, 1006);


select * FROM PLAYER;


INSERT INTO MATCHES (match_id, team_1_id, team_2_id, match_date) VALUES
-- Group Stage Matches
(1, 1001, 1002, '2024-11-01'),
(2, 1001, 1003, '2024-11-02'),
(3, 1001, 1004, '2024-11-03'),
(4, 1001, 1005, '2024-11-04'),
(5, 1001, 1006, '2024-11-05'),
(6, 1002, 1003, '2024-11-06'),
(7, 1002, 1004, '2024-11-07'),
(8, 1002, 1005, '2024-11-08'),
(9, 1002, 1006, '2024-11-09'),
(10, 1003, 1004, '2024-11-10'),
(11, 1003, 1005, '2024-11-11'),
(12, 1003, 1006, '2024-11-12'),
(13, 1004, 1005, '2024-11-13'),
(14, 1004, 1006, '2024-11-14'),
(15, 1005, 1006, '2024-11-15'),

-- Semi-Finals
(16, 1001, 1005, '2024-11-20'), -- Semi-Final 1: PHARM BOTS vs CE WARRIORS
(17, 1006, 1002, '2024-11-21'), -- Semi-Final 2: CSE STARS vs BBA GIANTS

-- Final
(18, 1006, 1005, '2024-11-25'); -- Final: CSE STARS vs CE WARRIORS

select * FROM MATCHES;


INSERT INTO PLAYER_STATISTICS (statistics_id, player_id, goals, assists, yellow_card, red_card) VALUES
-- Top Performers with High Stats
(1, 2061, 10, 3, 1, 0), -- MAHIR (CSE STARS): Tournament's top scorer with 10 goals
(2, 2050, 8, 2, 2, 0),  -- NAZMUL (CE WARRIORS): 8 goals, 2 assists
(3, 2009, 7, 1, 3, 0),  -- ABDULLAH (PHARM BOTS): Aggressive forward with 7 goals
(4, 2064, 5, 6, 2, 0),  -- SANI (CSE STARS): 5 goals, 6 assists
(5, 2056, 5, 4, 1, 0),  -- SAYAD (CSE STARS): 5 goals, 4 assists
(6, 2018, 4, 2, 1, 0),  -- ZAKER (BBA GIANTS): Consistent scorer

-- Strong Contributors
(7, 2063, 3, 8, 3, 0),  -- NOMAN (CSE STARS): Outstanding playmaker
(8, 2011, 3, 6, 2, 0),  -- NAYEER (PHARM BOTS): Creative midfielder
(9, 2022, 3, 5, 2, 1),  -- OCTO (BBA GIANTS): Captain with impactful stats
(10, 2008, 3, 4, 1, 0), -- REDWAN (PHARM BOTS): Strong all-round performance
(11, 2055, 4, 3, 3, 0), -- MEHEDI (CE WARRIORS): Midfield dominance
(12, 2033, 3, 1, 0, 0), -- MANSIB (ENGLISH KNIGHTS): Experienced forward
(13, 2020, 2, 6, 1, 0), -- ARGHO (BBA GIANTS): Playmaker with 6 assists
(14, 2007, 2, 5, 2, 0), -- NADID (PHARM BOTS): Creative winger

-- Defensive Contributions
(15, 2057, 0, 0, 4, 1), -- JOY (CSE STARS): Aggressive defender with a red card
(16, 2054, 1, 1, 5, 1), -- NIAZ (CE WARRIORS): Key defensive player with a goal
(17, 2036, 0, 0, 4, 0), -- NIROB (EE-THUNDERBOLTS): Hard-tackling defender
(18, 2028, 1, 1, 3, 0), -- AFNAN (ENGLISH KNIGHTS): Defender with a goal and assist
(19, 2059, 0, 2, 1, 0), -- LEON (CSE STARS): Defensive assist provider
(20, 2013, 1, 1, 2, 0), -- SADAT (BBA GIANTS): Reliable defender
(21, 2035, 0, 2, 1, 0), -- SUMON (EE-THUNDERBOLTS): Defensive contributions
(22, 2005, 0, 0, 5, 1), -- NAFIUR (PHARM BOTS): Most disciplined defender

-- Midfield Performance
(23, 2032, 2, 4, 2, 0), -- TAHMID (ENGLISH KNIGHTS): Versatile midfielder
(24, 2041, 3, 3, 1, 0), -- ALAMIN (EE-THUNDERBOLTS): All-round contribution
(25, 2044, 2, 1, 2, 0), -- MATIN (EE-THUNDERBOLTS): Creative midfielder
(26, 2027, 1, 4, 1, 0), -- SHIBLY (ENGLISH KNIGHTS): Playmaker
(27, 2017, 0, 6, 2, 0), -- NIPUN (BBA GIANTS): Key assist provider
(28, 2052, 1, 3, 2, 0), -- YAMIN (CE WARRIORS): Midfield engine

-- Goalkeeper Performance
(29, 2060, 0, 1, 0, 0), -- JIBON (CSE STARS): Crucial saves and an assist
(30, 2031, 0, 0, 1, 0); -- IFTI (ENGLISH KNIGHTS): Maintained clean sheets in matches


select * FROM PLAYER_STATISTICS;

INSERT INTO LEAGUE_STANDINGS (standing_id, team_id, played, won, drawn, lost, points, goals_scored, goals_conceded) VALUES
(1, 1006, 6, 4, 1, 1, 13, 16, 9),  -- CSE STARS (Champions): 4 wins, 1 draw, 1 loss
(2, 1001, 6, 3, 1, 2, 10, 15, 10),  -- PHARM BOTS: 3 wins, 1 draw, 2 losses
(3, 1002, 6, 3, 1, 2, 10, 14, 8),  -- BBA GIANTS: 3 wins, 1 draw, 2 losses
(4, 1003, 6, 2, 2, 2, 8, 12, 10),  -- ENGLISH KNIGHTS: 2 wins, 2 draws, 2 losses
(5, 1004, 6, 2, 1, 3, 7, 11, 13),  -- EE-THUNDERBOLTS: 2 wins, 1 draw, 3 losses
(6, 1005, 6, 1, 1, 4, 4, 8, 15);  -- CE WARRIORS: 1 win, 1 draw, 4 losses


select * FROM LEAGUE_STANDINGS;

-- TEAM SPECIFIC QUERIES 
SELECT * FROM TEAM WHERE team_id = 1001;  -- GET TEAM DETAILS BY TEAM team_id
SELECT player_name, position, age FROM PLAYER WHERE team_id = 1001; -- GET PLAYERS IN A SPECIFIC TEAM 
SELECT captain_name FROM TEAM WHERE team_id = 1001; -- GET CAPTAIN OF A SPECIFIC TEAM 

-- PLAYER SPECIFIC QUERIES
SELECT * FROM PLAYER WHERE player_id = 2001; -- GET PLAYER DETAILS BY player_id
SELECT *FROM PLAYER_STATISTICS WHERE goals > 5; -- GET PLAYERS WITH goals THAN A SPECIFIC VALUE 
SELECT *FROM PLAYER_STATISTICS ORDER BY goals DESC LIMIT 5; -- GET TOP SCORER 

-- MATCH SPECIFIC QUERIES
SELECT * FROM MATCHES WHERE team_1_id = 1001 OR team_2_id = 1001; -- GET ALL MATCHES FOR A SPECIFIC TEAM 
SELECT * FROM MATCHES WHERE match_id = 5; -- GET MATCH DETAILS BY MATCH ID

SELECT M.match_id, M.team_1_id, M.team_2_id, M.match_date
FROM MATCHES M
JOIN PLAYER P ON (P.team_id = M.team_1_id OR P.team_id = M.team_2_id)
WHERE P.player_id = 2054; -- GET MATCHES PLAYED BY A SPECIFIC PLAYER




-- LEAGUE_STANDINGS QUERIES
SELECT T.name, LS.points, LS.goals_scored, LS.goals_conceded
FROM LEAGUE_STANDINGS LS
JOIN TEAM T ON LS.team_id = T.team_id
ORDER BY LS.points DESC, LS.goals_scored DESC; -- GET THE LEAGUE_STANDINGS SORTED BY points


SELECT T.name, LS.points, LS.goals_scored
FROM LEAGUE_STANDINGS LS
JOIN TEAM T ON LS.team_id = T.team_id
ORDER BY LS.points DESC, LS.goals_scored DESC
LIMIT 3; -- GET THE TOP 3 TEAMS BY points

SELECT T.name, LS.played, LS.won, LS.drawn, LS.lost, LS.points
FROM LEAGUE_STANDINGS LS
JOIN TEAM T ON LS.team_id = T.team_id
WHERE T.team_id = 1003; -- GET STANDINGS FOR A SPECIFIC TEAM 

-- Performance ANALYSIS OR PLAYER BASED
SELECT goals, assists
FROM PLAYER_STATISTICS
ORDER BY goals DESC, assists DESC
LIMIT 5; -- GET PLAYERS WITH MOST goals AND assists

SELECT player_id, red_card
FROM PLAYER_STATISTICS
ORDER BY red_card DESC; -- GET PLAYERS WITH RED CARD 

SELECT M.match_date, T1.name AS team_1, T2.name AS team_2
FROM MATCHES M
JOIN TEAM T1 ON M.team_1_id = T1.team_id
JOIN TEAM T2 ON M.team_2_id = T2.team_id
WHERE (M.team_1_id = 1001 AND M.team_2_id = 1002) OR (M.team_1_id = 1002 AND M.team_2_id = 1001); -- Get Results of Matches Between Two Teams


SELECT * FROM MATCHES WHERE match_id IN (16, 17); -- GOT ALL SEMI FINAL MATCHES


SELECT M.match_date, T1.name AS team_1, T2.name AS team_2
FROM MATCHES M
JOIN TEAM T1 ON M.team_1_id = T1.team_id
JOIN TEAM T2 ON M.team_2_id = T2.team_id
WHERE M.match_id = 18; -- GET FINAL MATCH RESULT 



SELECT T.name, SUM(PS.goals) AS total_goals
FROM TEAM T
JOIN PLAYER P ON T.team_id = P.team_id
JOIN PLAYER_STATISTICS PS ON P.player_id = PS.player_id
GROUP BY T.name; -- GET THE TOTAL GOALS SCORED BY A TEAM

SELECT T.name, AVG(P.age) AS average_age
FROM TEAM T
JOIN PLAYER P ON T.team_id = P.team_id
WHERE T.team_id = 1001  -- Replace 1001 with the desired team_id
GROUP BY T.name; -- GET THE AVERAGE AGE OF PEOPLE IN A SPECIFIC TEAM 

SELECT T.name, LS.points
FROM LEAGUE_STANDINGS LS
JOIN TEAM T ON LS.team_id = T.team_id
WHERE T.team_id = 1001; -- GET THE TOTAL points EARNED BY A TEAM 


SELECT T.name AS winner_team
FROM LEAGUE_STANDINGS LS
JOIN TEAM T ON LS.team_id = T.team_id
ORDER BY LS.points DESC, (LS.goals_scored - LS.goals_conceded) DESC
LIMIT 1;
