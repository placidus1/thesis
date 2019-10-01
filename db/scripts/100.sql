create table Rock(
id int not null AUTO_INCREMENT,
name varchar(100),
primary key (id)
);

create table Sector(
id int not null AUTO_INCREMENT,
rock_id int not null,
name varchar(100),
primary key (id),
FOREIGN KEY (rock_id) REFERENCES Rock(id)
);


create table Route(
id int not null AUTO_INCREMENT,
sector_id int not null,
name varchar(100),
description varchar(500),
difficulty_level varchar(10),
image_name varchar(200),

primary key (id),
FOREIGN KEY (sector_id) REFERENCES Sector(id)
);

create table Route_point(
id int not null auto_increment,
route_id int not null,
x_percent int not null,
y_percent int not null,
order_point int not null,
primary key (id),
FOREIGN KEY (route_id) REFERENCES Route(id)

);




insert into Sector ( rock_id, name)
values ( (select id from Rock where name = 'Dupa Słonia'), 'Lipczyńska 1');

insert into Sector ( rock_id, name)
values ( (select id from Rock where name = 'Dupa Słonia'), 'Lipczyńska 2');

insert into Sector ( rock_id, name)
values ( (select id from Rock where name = 'Dupa Słonia'), 'Płyta Sasa i Ściana Luster');

insert into Route ( sector_id, name, description, difficulty_level)
values ( (select id from Sector where name = 'Lipczyńska 1'), 'Enpec', '8r +ST', 'III+', 'dupa_slonia_lipczynska');

insert into Route ( sector_id, name, description, difficulty_level)
values ( (select id from Sector where name = 'Lipczyńska 1'), 'Enderman', '10r +ST', 'VI.1+', 'dupa_slonia_lipczynska');

insert into Route ( sector_id, name, description, difficulty_level)
values ( (select id from Sector where name = 'Lipczyńska 1'), 'Minecraft', '9r +ST', 'V', 'dupa_slonia_lipczynska');

insert into Route ( sector_id, name, description, difficulty_level)
values ( (select id from Sector where name = 'Lipczyńska 1'), 'Ryski Dziędzielewicza', '6r +ST', 'VI.2', 'dupa_slonia_lipczynska');

insert into Route ( sector_id, name, description, difficulty_level)
values ( (select id from Sector where name = 'Lipczyńska 1'), 'Lipczyńska', '8r +ST', 'VI.2+', 'dupa_slonia_lipczynska');

insert into Route ( sector_id, name, description, difficulty_level)
values ( (select id from Sector where name = 'Lipczyńska 1'), 'Ani me, ani be, ani kukuryku', '9r +ST', 'VI.3', 'dupa_slonia_lipczynska');

insert into Route ( sector_id, name, description, difficulty_level)
values ( (select id from Sector where name = 'Lipczyńska 1'), 'Środek Lipczyńskiej', '9r +ST', 'VI.4/4+', 'dupa_slonia_lipczynska');

insert into Route ( sector_id, name, description, difficulty_level)
values ( (select id from Sector where name = 'Lipczyńska 1'), 'Apoteoza wytrysku', '7r +ST', 'VI.4', 'dupa_slonia_lipczynska');

insert into Route ( sector_id, name, description, difficulty_level)
values ( (select id from Sector where name = 'Lipczyńska 1'), 'Kant Lipczyńskiej', '5r', 'VI', 'dupa_slonia_lipczynska');


insert into Route ( sector_id, name, description, difficulty_level)
values ( (select id from Sector where name = 'Lipczyńska 2'), 'Kant Lipczyńskiej', '7r', 'VI', 'dupa_slonia_lipczynska2');

insert into Route ( sector_id, name, description, difficulty_level)
values ( (select id from Sector where name = 'Lipczyńska 2'), 'Niemy cyk', '6r', 'VI.1', 'dupa_slonia_lipczynska2');


insert into Rock ( name )
values ('Iglica' );

insert into Sector ( rock_id, name )
values ((select id from Rock where name = 'Iglica'), 'Iglica 1' );

insert into Sector ( rock_id, name )
values ((select id from Rock where name = 'Iglica'), 'Iglica 2' );

insert into Route ( sector_id, name, description, difficulty_level)
values ( (select id from Sector where name = 'Iglica 1'), 'Łapiński-Paszucha', '1p', 'V+');

insert into Route ( sector_id, name, description, difficulty_level)
values ( (select id from Sector where name = 'Iglica 1'), 'Zachodni Komin', '1p', 'IV+');

insert into Route ( sector_id, name, description, difficulty_level)
values ( (select id from Sector where name = 'Iglica 2'), 'Orzeł mrożony', '1p', 'VI+');

insert into Route ( sector_id, name, description, difficulty_level)
values ( (select id from Sector where name = 'Iglica 2'), 'Klasyczna', '1p', 'IV');

insert into Route ( sector_id, name, description, difficulty_level)
values ( (select id from Sector where name = 'Iglica 2'), 'Rysa Pokutników', '1p', 'V+');

insert into Route_point (route_id, x_percent, y_percent, order_point)
values (1, 25, 69, 1);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values (1, 25, 59, 2);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values (1, 25, 52, 3);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values (1, 26, 41, 4);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values (1, 37, 30, 5);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values (1, 37, 24, 6);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values (1, 35, 21, 7);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values (1, 38, 12, 8);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values (1, 41, 7, 9);

insert into Route_point (route_id, x_percent, y_percent, order_point)
values (2, 26, 70, 1);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values (2, 27, 65, 2);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values (2, 27, 61, 3);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values (2, 30, 49, 4);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values (2, 33, 43, 5);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values (2, 36, 36, 6);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values (2, 37, 30, 7);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values (2, 37, 24, 8);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values (2, 37, 18, 9);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values (2, 39, 14, 10);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values (2, 42, 8, 11);

insert into Route_point (route_id, x_percent, y_percent, order_point)
values (3, 37, 75, 1);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values (3, 44, 66, 2);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values (3, 48, 59, 3);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values (3, 49, 49, 4);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values (3, 48, 43, 5);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values (3, 49, 35, 6);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values (3, 50, 29, 7);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values (3, 52, 23, 8);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values (3, 54, 14, 9);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values (3, 57, 7, 10);

insert into Route_point (route_id, x_percent, y_percent, order_point)
values (4, 57, 72, 1);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values (4, 55, 65, 2);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values (4, 57, 56, 3);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values (4, 56, 49, 4);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values (4, 59, 34, 5);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values (4, 59, 26, 6);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values (4, 59, 15, 7);

insert into Route_point (route_id, x_percent, y_percent, order_point)
values (5, 61, 75, 1);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values (5, 63, 62, 2);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values (5, 65, 56, 3);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values (5, 67, 47, 4);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values (5, 67, 41, 5);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values (5, 70, 34, 6);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values (5, 70, 24, 7);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values (5, 70, 16, 8);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values (5, 69, 9, 9);

insert into Route_point (route_id, x_percent, y_percent, order_point)
values (6, 68, 73, 1);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values (6, 65, 64, 2);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values (6, 63, 62, 3);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values (6, 59, 57, 4);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values (6, 60, 51, 5);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values (6, 61, 44, 6);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values (6, 62, 36, 7);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values (6, 63, 27, 8);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values (6, 64, 18, 9);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values (6, 64, 10, 10);

insert into Route_point (route_id, x_percent, y_percent, order_point)
values (7, 74, 74, 1);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values (7, 73, 66, 2);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values (7, 73, 59, 3);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values (7, 72, 52, 4);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values (7, 69, 47, 5);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values (7, 69, 41, 6);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values (7, 69, 33, 7);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values (7, 70, 24, 8);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values (7, 71, 16, 9);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values (7, 72, 10, 10);

insert into Route_point (route_id, x_percent, y_percent, order_point)
values (8, 81, 77, 1);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values (8, 80, 70, 2);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values (8, 80, 62, 3);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values (8, 79, 52, 4);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values (8, 78, 43, 5);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values (8, 76, 34, 6);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values (8, 76, 29, 7);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values (8, 76, 22, 8);

insert into Route_point (route_id, x_percent, y_percent, order_point)
values (9, 89, 74, 1);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values (9, 89, 64, 2);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values (9, 86, 55, 3);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values (9, 84, 48, 4);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values (9, 83, 41, 5);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values (9, 81, 34, 6);

insert into Route_point (route_id, x_percent, y_percent, order_point)
values (10, 31, 71, 1);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values (10, 41, 1, 2);

insert into Route_point (route_id, x_percent, y_percent, order_point)
values (11, 53, 64, 1);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values (11, 43, 1, 2);

insert into Route_point (route_id, x_percent, y_percent, order_point)
values (12, 44, 76, 1);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values (12, 48, 10, 2);

insert into Route_point (route_id, x_percent, y_percent, order_point)
values (13, 69, 70, 1);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values (13, 48, 10, 2);

insert into Route_point (route_id, x_percent, y_percent, order_point)
values (14, 78, 67, 1);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values (14, 48, 10, 2);

insert into Route_point (route_id, x_percent, y_percent, order_point)
values (15, 49, 74, 1);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values (15, 48, 57, 2);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values (15, 47, 51, 3);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values (15, 46, 44, 4);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values (15, 46, 34, 5);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values (15, 42, 23, 6);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values (15, 38, 15, 7);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values (15, 38, 9, 8);

insert into Route_point (route_id, x_percent, y_percent, order_point)
values (16, 59, 57, 1);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values (16, 57, 48, 2);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values (16, 54, 35, 3);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values (16, 52, 27, 4);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values (16, 49, 19, 5);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values (16, 47, 14, 6);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values (16, 45, 10, 7);







CREATE INDEX idx_sector_id ON Route (sector_id);
CREATE INDEX idx_route_id ON Route_point (route_id);

