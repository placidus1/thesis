create table Rock(
id int not null AUTO_INCREMENT,
name varchar(100),
primary key (id)
);

create table Sector(
id int not null AUTO_INCREMENT,
rock_id int not null,
name varchar(100),
image blob,
primary key (id),
FOREIGN KEY (rock_id) REFERENCES Rock(id)
);


create table Route(
id int not null AUTO_INCREMENT,
sector_id int not null,
name varchar(100),
description varchar(500),
difficulty_level varchar(10),

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
values ( (select id from Sector where name = 'Lipczyńska 1'), 'Enpec', '8r +ST', 'III+');

insert into Route ( sector_id, name, description, difficulty_level)
values ( (select id from Sector where name = 'Lipczyńska 1'), 'Enderman', '10r +ST', 'VI.1+');

insert into Route ( sector_id, name, description, difficulty_level)
values ( (select id from Sector where name = 'Lipczyńska 1'), 'Minecraft', '9r +ST', 'V');

insert into Route ( sector_id, name, description, difficulty_level)
values ( (select id from Sector where name = 'Lipczyńska 1'), 'Ryski Dziędzielewicza', '6r +ST', 'VI.2');

insert into Route ( sector_id, name, description, difficulty_level)
values ( (select id from Sector where name = 'Lipczyńska 1'), 'Lipczyńska', '8r +ST', 'VI.2+');

insert into Route ( sector_id, name, description, difficulty_level)
values ( (select id from Sector where name = 'Lipczyńska 1'), 'Ani me, ani be, ani kukuryku', '9r +ST', 'VI.3');

insert into Route ( sector_id, name, description, difficulty_level)
values ( (select id from Sector where name = 'Lipczyńska 1'), 'Środek Lipczyńskiej', '9r +ST', 'VI.4/4+');

insert into Route ( sector_id, name, description, difficulty_level)
values ( (select id from Sector where name = 'Lipczyńska 1'), 'Apoteoza wytrysku', '7r +ST', 'VI.4');

insert into Route ( sector_id, name, description, difficulty_level)
values ( (select id from Sector where name = 'Lipczyńska 1'), 'Kant Lipczyńskiej', '5r', 'VI');


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



