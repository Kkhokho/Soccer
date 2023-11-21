Create table player (
	playerid varchar not NUll,
	name varchar,
	position varchar,
	weight varchar,
	height varchar,
	DOB date,
	nation varchar check (nation in ('United States','Canada','Mexico','Brazil','Argentina','England','France',
			'Germany','Italy','Spain','Portugal','Russia','Japan','South Korea','Australia','South Africa','Egypt',
			'Netherlands','Belgium','Sweden','Denmark','Poland','Croatia')),
	primary key (playerid)
);
Create table team (
	teamid varchar not NULL,
	name varchar not NULL,
	city varchar,
	country varchar,
	DOF date not null,
	stadiumid varchar,
	primary key (teamid)
);
Create table coach (
	Coachid varchar not null,
	name varchar not null,
	ex varchar,
	nation varchar check (nation in ('United States','Canada','Mexico','Brazil','Argentina','England','France',
			'Germany','Italy','Spain','Portugal','Russia','Japan','South Korea','Australia','South Africa','Egypt',
			'Netherlands','Belgium','Sweden','Denmark','Poland','Croatia')),
	primary key (Coachid)
);
Create table stadium (
	stadiumid varchar not null,
	name varchar not null,
	address varchar not null,
	primary key (stadiumid)
);
Create table league (
	leagueid varchar not null,
	name varchar not null,
	quantity varchar not null,
	primary key (leagueid)
);
Create table match (
	Matchid varchar not null,
	ngay date,
	win varchar,
	Teamid1 varchar not null,
	Teamid2 varchar not null,
	Results varchar,
	Leagueid varchar not null,
	Stadiumid varchar not null,
	primary key (Matchid)
);
Create table huanluyen (
	Coachid_Teamid varchar not null,
	year varchar not null,
	coachid varchar not null,
	teamid varchar not null,
	primary key (Coachid_Teamid)
);
Create table thamgia (
	Teamid_leagueid varchar not null,
	Year varchar not null,
	Teamid varchar not null,
	Leagueid varchar not null,
	primary key (Teamid_leagueid)
);
Create table thidau (
	playerid_teamid varchar not null,
	year varchar not null,
	playerid varchar not null,
	teamid varchar not null,
	value varchar not null,
	primary key (playerid_teamid)
);
create table vodich (
	leagueid varchar,
	teamid varchar ,
	year varchar
);
alter table vodich 
add constraint fk_vodich_league
foreign key (leagueid) references league(leagueid) ;
alter table vodich 
add constraint fk_vodich_team
foreign key (teamid) references team(teamid);
alter table thidau
add constraint fk_thidau_player
foreign key (playerid) references player(playerid);
alter table thidau
add constraint fk_thidau_team
foreign key (teamid) references team(teamid);
alter table thamgia
add constraint fk_thamgia_team
foreign key (teamid) references team(teamid);
alter table thamgia
add constraint fk_thamgia_league
foreign key (leagueid) references league(leagueid);
alter table huanluyen
add constraint fk_huanluyen_coach
foreign key (coachid) references coach(coachid);
alter table huanluyen
add constraint fk_huanluyen_team
foreign key (teamid) references team(teamid);
alter table team
add constraint fk_team_stadium
foreign key (stadiumid) references stadium(stadiumid);
alter table match
add constraint fk_match_team1
foreign key (teamid1) references team(teamid);
alter table match
add constraint fk_match_team2
foreign key (teamid2) references team(teamid);
alter table match
add constraint fk_match_league
foreign key (leagueid) references league(leagueid);
alter table match
add constraint fk_match_stadium
foreign key (stadiumid) references stadium(stadiumid);
alter table vodich
add id varchar;
alter table vodich
add primary key (id);
insert into Player(playerid,name,position,height,weight,dob,nation)
values 
	('Por002', 'Bernardo Silva', 'RW', '1.73m', '64kg', '1994-08-10', 'Portugal'),
	('Eng003', 'Raheem Sterling', 'LW', '1.70m', '69kg', '1994-12-08', 'England'),
	('Ger013', 'Joshua Kimmich', 'CM', '1.76m', '73kg', '1995-02-08', 'Germany'),
	('Spa005', 'Sergio Busquets', 'DMF', '1.89m', '76kg', '1988-07-16', 'Spain'),
	('Arg002', 'Paulo Dybala', 'SS', '1.77m', '75kg', '1993-11-15', 'Argentina'),
	('Fra003', 'Antoine Griezmann', 'SS', '1.76m', '73kg', '1991-03-21', 'France'),
	('Bra003', 'Alisson Becker', 'GK', '1.91m', '91kg', '1992-10-02', 'Brazil'),
	('Spa006', 'Thiago Alcantara', 'CM', '1.74m', '70kg', '1991-04-11', 'Spain'),
	('Ita010', 'Marco Verratti', 'CM', '1.65m', '60kg', '1992-11-05', 'Italy'),
	('Eng001','RashFord','LWF','1.81m','70kg','1997-10-31','England'),
	('Bra001','Antony','RWF','1.75m','65kg','2000-02-24','Brazil'),
	('Eng002','Harry Kane','CF','1.85m','70kg','1993-07-28','England'),
	('Por001','Cistiano Ronaldo','CF','1.85m','75kg','1985-02-05','Portugal'),
	('Fra001','Martial','CF','1.81m','70kg','1995-12-05','France'),
	('Arg001','Lionel Messi','RWF','1.70m','70kg','1987-06-24','Argentina'),
	('Spa003','David De gea','GK','1.81m','70kg','1990-11-07','Spain'),
	('Bra002','Neymar Jr','LWF','1.75m','68kg','1992-02-05','Brazil'),
	('Bel001','Kevin De Bruyne','AMF','1.81m','68kg','1991-06-28','Belgium'),
	('Fra002','Kylian Mbappé','LWF','1.78m','73kg','1998-12-20','France'),
	('Spa004','Sergio Ramos','CB','1.84m','82kg','1986-03-30','Spain'),
	('Ger003','Manuel Neuer','GK','1.93m','92kg','1986-03-27','Germany'),
	('Ita009','Giorgio Chiellini','CB','1.87m','85kg','1984-08-14','Italy'),
 	('Cro010','Luka Modric','CM','1.72m','66kg','1985-09-09','Croatia'),
	('Egy011','Mohamed Salah','RW','1.75m','71kg','1992-06-15','Egypt'),
	('Ger012','Toni Kroos','CM','1.83m','76kg','1990-01-04','Germany'),
	('Por003', 'João Cancelo', 'RB', '1.82m', '74kg', '1994-05-27', 'Portugal'),
	('Eng004', 'Harry Maguire', 'CB', '1.94m', '100kg', '1993-03-05', 'England'),
	('Ger014', 'Leon Goretzka', 'CM', '1.89m', '79kg', '1995-02-06', 'Germany'),
	('Spa007', 'Ferran Torres', 'RW', '1.81m', '78kg', '2000-02-29', 'Spain'),
	('Arg003', 'Giovani Lo Celso', 'CM', '1.77m', '70kg', '1996-04-09', 'Argentina'),
	('Fra004', 'Lucas Digne', 'LB', '1.78m', '72kg', '1993-07-20', 'France'),
	('Bra004', 'Ederson Moraes', 'GK', '1.88m', '86kg', '1993-08-17', 'Brazil'),
	('Spa008', 'Dani Olmo', 'AMF', '1.80m', '75kg', '1998-05-07', 'Spain'),
	('Ita011', 'Leonardo Bonucci', 'CB', '1.90m', '85kg', '1987-05-01', 'Italy'),
	('Eng005', 'Trent Alexander-Arnold', 'RB', '1.78m', '69kg', '1998-10-07', 'England'),
	('Bra005', 'Roberto Firmino', 'SS', '1.81m', '76kg', '1991-10-02', 'Brazil'),
	('Eng006', 'Jadon Sancho', 'RW', '1.80m', '76kg', '2000-03-25', 'England'),
	('Por004', 'Diogo Jota', 'LW', '1.78m', '69kg', '1996-12-04', 'Portugal'),
	('Fra005', 'Presnel Kimpembe', 'CB', '1.83m', '78kg', '1995-08-13', 'France'),
	('Arg004', 'Rodrigo De Paul', 'CM', '1.78m', '68kg', '1994-05-24', 'Argentina'),
	('Spa009', 'Santi Cazorla', 'AMF', '1.68m', '66kg', '1984-12-13', 'Spain'),
	('Bra006', 'Casemiro', 'DMF', '1.85m', '84kg', '1992-02-23', 'Brazil'),
	('Bel002', 'Romelu Lukaku', 'CF', '1.90m', '94kg', '1993-05-13', 'Belgium'),
	('Fra006', 'Thomas Lemar', 'LW', '1.70m', '65kg', '1995-11-12', 'France'),
	('Spa010', 'Diego Costa', 'CF', '1.88m', '85kg', '1988-10-07', 'Spain'),
	('Ger015', 'Leroy Sané', 'LW', '1.84m', '76kg', '1996-01-11', 'Germany'),
	('Ita012', 'Ciro Immobile', 'CF', '1.85m', '80kg', '1990-02-20', 'Italy'),
	('Cro011', 'Ivan Rakitic', 'CM', '1.84m', '78kg', '1988-03-10', 'Croatia'),
	('Egy012', 'Mohamed Elneny', 'DMF', '1.80m', '70kg', '1992-07-11', 'Egypt'),
	('Ger016', 'Serge Gnabry', 'RW', '1.75m', '75kg', '1995-07-14', 'Germany'),
	('Por005', 'Rui Patrício', 'GK', '1.90m', '84kg', '1988-02-15', 'Portugal'),
	('Por006', 'Bruno Fernandes', 'AMF', '1.80m', '65kg', '1994-08-09', 'Portugal');
-- select * from player order by playerid asc
-- select * from player order by position asc
insert into league (LeagueId,Name,Quantity)
values
	('World Cup', 'Giai bong da toan the gioi', 32),
	('UCL', 'UEFA Champions League', 32),
	('Euro', 'Giai vo đich bong đa chau Au', 24),
	('Copa America', 'Giai vo đich bong đa Nam My', 10),
	('Premier League', 'Giai vo đich bong đa Anh', 20),
	('La liga', 'Giai vo đich bong đa Tay Ban Nha', 20),
	('Serie A', 'Giai vo dich bong da Italy', 20),
	('Bundesliga','Giai vo dich bong da Duc',18),
	('Ligue 1', 'Giải vô địch bóng đá Pháp', 20),
	('Eredivisie', 'Giải vô địch bóng đá Hà Lan', 18),
	('J.League', 'Giải vô địch bóng đá Nhật Bản', 20);
INSERT INTO Stadium (stadiumid, name, address) VALUES 
	('Stadium01', 'Nou Camp', 'Barcelona'),
	('Stadium02', 'Old Trafford', 'Manchester'),
	('Stadium03', 'Santiago Bernabeu', 'Madrid'),
	('Stadium04', 'Allianz Arena', 'Munich'),
	('Stadium05', 'San Siro', 'Milan'),
	('Stadium06', 'Parc des Princes', 'Paris'),
	('Stadium07', 'Signal Iduna Park', 'Dortmund'),
	('Stadium08', 'Anfield', 'Liverpool'),
	('Stadium09', 'Stamford Bridge', 'London'),
	('Stadium10', 'Etihad Stadium', 'Manchester'),
	('Stadium11', 'Stadio Olimpico', 'Rome'),
	('Stadium12', 'Emirates Stadium', 'London'),
	('Stadium13', 'Tottenham Hotspur Stadium','London'),
	('Stadium14', 'Wanda Metropolitano', 'Madrid'),
	('Stadium15', 'Juventus Stadium', 'Turin'),
	('Stadium16', 'Estadio do Dragao', 'Porto'),
	('Stadium17', 'Johan Cruyff Arena','Amsterdam'),
	('Stadium18', 'Estadio da Luz', 'Lisbon');
insert into team(teamid,name,city,country,dof,stadiumid)
values
	('Team001','Manchester United','Manchester','','1878-1-1','Stadium02'),
	('Team002','Barcelona','Barcelona','','1878-1-1','Stadium01'),
	('Team003','Real Madrid','Madrid','','1878-1-1','Stadium03'),
	('Team004','Bayern Munich','Munich','','1878-1-1','Stadium04'),
	('Team005','Inter Milan','Milan','','1878-1-1','Stadium05'),
	('Team006','AC Milan','Milan','','1878-1-1','Stadium05'),
	('Team007','Paris sanit germain','Paris','','1970-1-1','Stadium06'),
	('Team008','Dortmund','Dortmund','','1909-1-1','Stadium07'),
	('Team009','Liverpool','Liverpool','','1892-1-1','Stadium08'),
	('Team010','Chelsea','London','','1905-1-1','Stadium09'),
	('Team011','Manchester City','Manchester','','1880-1-1','Stadium10'),
	('Team012','As Roma','Rome','','1927-1-1','Stadium11'),
	('Team013','Arsenal','London','','1886-1-1','Stadium12'),
	('Team014','Tottenham Hotspur','London','','1882-1-1','Stadium13'),
	('Team015','Atletico Madrid','Madrid','','1903-1-1','Stadium14'),
	('Team016','Juventus','Turin','','1897-1-1','Stadium15'),
	('Team017','Porto','Porto','','1893-1-1','Stadium16'),
	('Team018','Ajax Amsterdam','Amsterdam','','1900-1-1','Stadium17'),
	('Team019','Sporting Lisbon','Lisbon','','1906-1-1','Stadium18');
insert into coach (coachid,name,ex,nation)
values 
	('Coach001','Eric Ten Hag','7 years','Netherlands'),
	('Coach002','Jose Mourinho','17 years','Portugal'),
	('Coach003','Louis van Gaal','20 years','Netherlands'),
	('Coach004','Ryan Giggs','0 years','England'),
	('Coach005','David Moyes','15 years','England'),
	('Coach006','Sir Alex Ferguson','26 years','England'),
	('Coach007','Roberto Mancini','9 years','Italy'),
	('Coach008','Pep Guardiola','14 years','Spain'),
	('Coach009','Thomas Tuchel','12 years','Germany'),
	('Coach010','Frank Lampard ','2 years','England'),
	('Coach011','Maurizio Sarri','19 years','Italy'),
	('Coach012','Antonio Conte','13 years','Italy'),
	('Coach013','Guus Hiddink','28 years','Netherlands'),
	('Coach014','Rafael Benitez','27 years','Spain'),
	('Coach015','Arsène Wenger','22 years','France'),
	('Coach016','Unai Emery','10 years','Spain'),
	('Coach017','Mikel Arteta','12 years','Germany'),
	('Coach018','Carlo Ancelotti','20 years','Italy'),
	('Coach019','Zinedine Zidane','6 years','France'),
	('Coach020','Jurgen Klopp','15 years','Germany'),
	('Coach021','Xavi Hernandez','5 years','Spain');
insert into huanluyen (coachid_teamid,year,coachid,teamid)
values 
	('Coach001_Team001','2022-','Coach001','Team001'),
	('Coach001_Team018','2017-2022','Coach001','Team018'),
	('Coach002_Team001','2015-2018','Coach002','Team001'),
	('Coach002_Team005','2008-2010','Coach002','Team005'),
	('Coach002_Team003','2010-2013','Coach002','Team003'),
	('Coach002_Team010','2004-2007,2013-2015','Coach002','Team010'),
	('Coach002_Team012','2021-','Coach002','Team012'),
	('Coach002_Team014','2019-2021','Coach002','Team014'),
	('Coach002_Team017','2002-2004','Coach002','Team017'),
	('Coach003_Team001','2014-2016','Coach003','Team001'),
	('Coach003_Team002','1997-2000,2002-2003','Coach003','Team002'),
	('Coach003_Team004','2009-2011','Coach003','Team004'),
	('Coach006_Team001','1986-2013','Coach006','Team001'),
	('Coach008_Team002','2008-2012','Coach008','Team002'),
	('Coach008_Team004','2013-2016','Coach008','Team004'),
	('Coach008_Team011','2016-','Coach008','Team011'),
	('Coach009_Team004','2023-','Coach009','Team004'),
	('Coach020_Team009','2015-','Coach020','Team009'),
	('Coach021_Team002','2021-','Coach021','Team002');
insert into thidau (playerid_teamid,year,playerid,teamid,value)
values
	('Por002_Team011',2023,'Por002','Team011','80.000.000$'),
	('Eng003_Team010',2023,'Eng003','Team010','30.000.000$'),
	('Ger013_Team004',2023,'Ger013','Team004','70.000.000$'),
	('Spa005_Team002',2023,'Spa005','Team002','5.000.000$'),
	('Arg002_Team012',2023,'Arg002','Team012','50.000.000$'),
	('Bra003_Team009',2023,'Bra003','Team009','30.000.000$'),
	('Fra003_Team015',2023,'Fra003','Team015','40.000.000$'),
	('Spa006_Team009',2023,'Spa006','Team009','40.000.000$'),
	('Ita010_Team007',2023,'Ita010','Team007','50.000.000$'),
	('Bra001_Team001',2023,'Bra001','Team001','50.000.000$'),
	('Eng002_Team014',2023,'Eng002','Team014','100.000.000$'),
	('Por001_Team001',2022,'Por001','Team001','20.000.000$'),
	('Fra001_Team001',2023,'Fra001','Team001','20.000.000$'),
	('Arg001_Team007',2023,'Arg001','Team007','30.000.000$'),
	('Spa003_Team001',2023,'Spa003','Team001','10.000.000$'),
	('Bra002_Team007',2023,'Bra002','Team007','50.000.000$'),	
	('Bel001_Team011',2023,'Bel001','Team011','50.000.000$'),
	('Fra002_Team007',2023,'Fra002','Team007','130.000.000$'),
	('Spa004_Team007',2023,'Spa004','Team007','10.000.000$'),
	('Ger003_Team004',2023,'Ger003','Team004','40.000.000$'),
	('Egy011_Team009',2023,'Egy011','Team009','70.000.000$'),
	('Ger012_Team003',2023,'Ger012','Team003','20.000.000$'),
	('Por003_Team004',2023,'Por003','Team004','50.000.000$'),
	('Por003_Team011',2023,'Por003','Team011','40.000.000$'),
	('Eng005_Team009',2023,'Eng005','Team009','80.000.000$'),
	('Bra005_Team009',2023,'Bra005','Team009','30.000.000$'),
	('Bra006_Team001',2023,'Bra006','Team001','70.000.000$'),
	('Por006_Team001',2023,'Por006','Team001','50.000.000$');
insert into thamgia (Teamid_Leagueid,year,Teamid,Leagueid)
values 
	('Team002_UCL',2023,'Team002','UCL'),
	('Team003_UCL',2023,'Team003','UCL'),
	('Team004_UCL',2023,'Team004','UCL'),
	('Team005_UCL',2023,'Team005','UCL'),
	('Team006_UCL',2023,'Team006','UCL'),
	('Team007_UCL',2023,'Team007','UCL'),
	('Team008_UCL',2023,'Team008','UCL'),
	('Team009_UCL',2023,'Team009','UCL'),
	('Team010_UCL',2023,'Team010','UCL'),
	('Team011_UCL',2023,'Team011','UCL'),
	('Team015_UCL',2023,'Team015','UCL'),
	('Team018_UCL',2023,'Team018','UCL'),
	('Team001_Premier League',2023,'Team001','Premier League'),
	('Team002_La liga',2023,'Team002','La liga'),
	('Team003_La liga',2023,'Team003','La liga'),
	('Team004_Bundesliga',2023,'Team004','Bundesliga'),
	('Team005_Serie A',2023,'Team005','Serie A'),
	('Team006_Serie A',2023,'Team006','Serie A'),
	('Team007_Ligue 1',2023,'Team007','Ligue 1'),
	('Team008_Bundesliga',2023,'Team008','Bundesliga'),
	('Team009_Premier League',2023,'Team009','Premier League'),
	('Team010_Premier League',2023,'Team010','Premier League'),
	('Team011_Premier League',2023,'Team011','Premier League'),
	('Team012_Serie A',2023,'Team012','Serie A'),
	('Team013_Premier League',2023,'Team013','Premier League'),
	('Team014_Premier League',2023,'Team014','Premier League'),
	('Team015_La liga',2023,'Team015','La liga'),
	('Team016_Serie A',2023,'Team016','Serie A'),
	('Team018_Eredivisie',2023,'Team018','Eredivisie');
insert into Vodich (id,Leagueid,Teamid,Year)
values 
	('1','UCL','Team011',2023),
	('2','UCL','Team003',2022),
	('3','UCL','Team004',2020),
	('4','UCL','Team010',2021),
	('5','Premier League','Team011',2023),
	('6','Premier League','Team011',2022),
	('7','Premier League','Team009',2021),
	('8','Premier League','Team011',2020),
	('9','La liga','Team002',2023),
	('10','La liga','Team002',2022),
	('11','La liga','Team003',2021),
	('12','La liga','Team015',2020),
	('13','Serie A','Team005',2022),
	('14','Serie A','Team016',2021),
	('15','Serie A','Team016',2021),
	('16','Bundesliga','Team004',2023),
	('17','Bundesliga','Team004',2022),
	('18','Bundesliga','Team004',2021),
	('19','Bundesliga','Team004',2020),
	('20','Ligue 1','Team007',2023),
	('21','Ligue 1','Team007',2022),
	('22','Ligue 1','Team007',2021),
	('23','Ligue 1','Team007',2020);
insert into Match (matchid,ngay,win,teamid1,teamid2,results,leagueid,stadiumid)
values 
	('Match006','2023-5-26', 'Manchester United','Team001','Team010','4-1','Premier League','Stadium02'),
	('Match001','2020-8-14','Bayern Munich','Team002','Team004','2-8','UCL','Stadium01'),
	('Match002','2023-2-24','Manchester United','Team001','Team002','1-2','UCL','Stadium02'),
	('Match003','2020-8-16', 'Liverpool', 'Team009', 'Team011', '4-0', 'Premier League', 'Stadium08'),
    ('Match004','2020-8-17', 'Manchester United', 'Team001', 'Team012', '2-0', 'Premier League', 'Stadium02'),
    ('Match005','2020-8-18', 'Real Madrid', 'Team003', 'Team015', '3-1', 'La liga', 'Stadium03'),
	('Match006','2023-5-26', 'Manchester United','Team001','Team010','4-1','Premier League','Stadium02');

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	