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
image_name varchar (200),
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


insert into Rock ( name )
values ('Dupa Słonia' );


insert into Sector ( rock_id, name)
values ( (select id from Rock where name = 'Dupa Słonia'), 'Lipczyńska 1');

insert into Sector ( rock_id, name)
values ( (select id from Rock where name = 'Dupa Słonia'), 'Lipczyńska 2');

insert into Sector ( rock_id, name)
values ( (select id from Rock where name = 'Dupa Słonia'), 'Płyta Sasa i Ściana Luster');

insert into Route ( sector_id, name, description, difficulty_level, image_name)
values ( (select id from Sector where name = 'Lipczyńska 1'), 'Enpec', '8r +ST', 'III+', 'dupa_slonia_lipczynska');

insert into Route ( sector_id, name, description, difficulty_level, image_name)
values ( (select id from Sector where name = 'Lipczyńska 1'), 'Enderman', '10r +ST', 'VI.1+', 'dupa_slonia_lipczynska');

insert into Route ( sector_id, name, description, difficulty_level, image_name)
values ( (select id from Sector where name = 'Lipczyńska 1'), 'Minecraft', '9r +ST', 'V', 'dupa_slonia_lipczynska');

insert into Route ( sector_id, name, description, difficulty_level, image_name)
values ( (select id from Sector where name = 'Lipczyńska 1'), 'Ryski Dziędzielewicza', '6r +ST', 'VI.2', 'dupa_slonia_lipczynska');

insert into Route ( sector_id, name, description, difficulty_level, image_name)
values ( (select id from Sector where name = 'Lipczyńska 1'), 'Lipczyńska', '8r +ST', 'VI.2+', 'dupa_slonia_lipczynska');

insert into Route ( sector_id, name, description, difficulty_level, image_name)
values ( (select id from Sector where name = 'Lipczyńska 1'), 'Ani me, ani be, ani kukuryku', '9r +ST', 'VI.3', 'dupa_slonia_lipczynska');

insert into Route ( sector_id, name, description, difficulty_level, image_name)
values ( (select id from Sector where name = 'Lipczyńska 1'), 'Środek Lipczyńskiej', '9r +ST', 'VI.4/4+', 'dupa_slonia_lipczynska');

insert into Route ( sector_id, name, description, difficulty_level, image_name)
values ( (select id from Sector where name = 'Lipczyńska 1'), 'Apoteoza wytrysku', '7r +ST', 'VI.4', 'dupa_slonia_lipczynska');

insert into Route ( sector_id, name, description, difficulty_level, image_name)
values ( (select id from Sector where name = 'Lipczyńska 1'), 'Kant Lipczyńskiej', '5r', 'VI', 'dupa_slonia_lipczynska');


insert into Route ( sector_id, name, description, difficulty_level, image_name)
values ( (select id from Sector where name = 'Lipczyńska 2'), 'Kant Lipczyńskiej', '7r', 'VI', 'dupa_slonia_lipczynska2');

insert into Route ( sector_id, name, description, difficulty_level, image_name)
values ( (select id from Sector where name = 'Lipczyńska 2'), 'Niemy cyk', '6r', 'VI.1', 'dupa_slonia_lipczynska2');


insert into Rock ( name )
values ('Iglica' );

insert into Sector ( rock_id, name )
values ((select id from Rock where name = 'Iglica'), 'Iglica 1' );

insert into Sector ( rock_id, name )
values ((select id from Rock where name = 'Iglica'), 'Iglica 2' );

insert into Route ( sector_id, name, description, difficulty_level, image_name)
values ( (select id from Sector where name = 'Iglica 1'), 'Łapiński-Paszucha', '1p', 'V+', 'iglica_iglica1');

insert into Route ( sector_id, name, description, difficulty_level, image_name)
values ( (select id from Sector where name = 'Iglica 1'), 'Zachodni Komin', '1p', 'IV+', 'iglica_iglica1');

insert into Route ( sector_id, name, description, difficulty_level, image_name)
values ( (select id from Sector where name = 'Iglica 2'), 'Orzeł mrożony', '1p', 'VI+', 'iglica_iglica2');

insert into Route ( sector_id, name, description, difficulty_level, image_name)
values ( (select id from Sector where name = 'Iglica 2'), 'Klasyczna', '1p', 'IV', 'iglica_iglica2');

insert into Route ( sector_id, name, description, difficulty_level, image_name)
values ( (select id from Sector where name = 'Iglica 2'), 'Rysa Pokutników', '1p', 'V+', 'iglica_iglica2');



insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Enpec" ), 25, 69, 1);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Enpec" ), 25, 59, 2);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Enpec" ), 25, 52, 3);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Enpec" ), 26, 41, 4);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Enpec" ), 37, 30, 5);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Enpec" ), 37, 24, 6);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Enpec" ), 35, 21, 7);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Enpec" ), 38, 12, 8);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Enpec" ), 41, 7, 9);


insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Enderman" ), 26, 70, 1);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Enderman" ), 27, 65, 2);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Enderman" ), 27, 61, 3);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Enderman" ), 30, 49, 4);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Enderman" ), 33, 43, 5);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Enderman" ), 36, 36, 6);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Enderman" ), 37, 30, 7);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Enderman" ), 37, 24, 8);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Enderman" ), 37, 18, 9);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Enderman" ), 39, 14, 10);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Enderman" ), 42, 8, 11);


insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Minecraft" ), 37, 75, 1);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Minecraft" ), 44, 66, 2);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Minecraft" ), 48, 59, 3);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Minecraft" ), 49, 49, 4);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Minecraft" ), 48, 43, 5);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Minecraft" ), 49, 35, 6);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Minecraft" ), 50, 29, 7);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Minecraft" ), 52, 23, 8);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Minecraft" ), 54, 14, 9);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Minecraft" ), 57, 7, 10);


insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Ryski Dziędzielewicza" ), 57, 72, 1);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Ryski Dziędzielewicza" ), 55, 65, 2);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Ryski Dziędzielewicza" ), 57, 56, 3);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Ryski Dziędzielewicza" ), 56, 49, 4);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Ryski Dziędzielewicza" ), 59, 34, 5);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Ryski Dziędzielewicza" ), 59, 26, 6);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Ryski Dziędzielewicza" ), 59,15, 7);


insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Lipczyńska" ), 61, 75, 1);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Lipczyńska" ), 63, 62, 2);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Lipczyńska" ), 65, 56, 3);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Lipczyńska" ), 67, 47, 4);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Lipczyńska" ), 67, 41, 5);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Lipczyńska" ), 70, 34, 6);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Lipczyńska" ), 70, 24, 7);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Lipczyńska" ), 70, 16, 8);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Lipczyńska" ), 69, 9, 9);

insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Ani me, ani be, ani kukuryku" ), 68, 73, 1);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Ani me, ani be, ani kukuryku" ), 65, 64, 2);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Ani me, ani be, ani kukuryku" ), 63, 62, 3);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Ani me, ani be, ani kukuryku" ), 59, 57, 4);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Ani me, ani be, ani kukuryku" ), 60, 51, 5);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Ani me, ani be, ani kukuryku" ), 61, 44, 6);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Ani me, ani be, ani kukuryku" ), 62, 36, 7);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Ani me, ani be, ani kukuryku" ), 63, 27, 8);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Ani me, ani be, ani kukuryku" ), 64, 18, 9);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Ani me, ani be, ani kukuryku" ), 64, 10, 10);


insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Środek Lipczyńskiej" ), 74, 74, 1);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Środek Lipczyńskiej" ), 73, 66, 2);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Środek Lipczyńskiej" ), 73, 59, 3);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Środek Lipczyńskiej" ), 72, 52, 4);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Środek Lipczyńskiej" ), 69, 47, 5);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Środek Lipczyńskiej" ), 69, 41, 6);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Środek Lipczyńskiej" ), 69, 33, 7);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Środek Lipczyńskiej" ), 70, 24, 8);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Środek Lipczyńskiej" ), 71, 16, 9);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Środek Lipczyńskiej" ), 72, 10, 10);

insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Apoteoza wytrysku" ), 81, 77, 1);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Apoteoza wytrysku" ), 80, 70, 2);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Apoteoza wytrysku" ), 80, 62, 3);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Apoteoza wytrysku" ), 79, 52, 4);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Apoteoza wytrysku" ), 78, 43, 5);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Apoteoza wytrysku" ), 76, 34, 6);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Apoteoza wytrysku" ), 76, 29, 7);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Apoteoza wytrysku" ), 76, 22, 8);


insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Kant Lipczyńskiej" and sector_id = (select id from sector where name = 'Lipczyńska 2') ), 89, 74, 1);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Kant Lipczyńskiej" and sector_id = (select id from sector where name = 'Lipczyńska 2')), 89, 64, 2);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Kant Lipczyńskiej" and sector_id = (select id from sector where name = 'Lipczyńska 2')), 86, 55, 3);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Kant Lipczyńskiej" and sector_id = (select id from sector where name = 'Lipczyńska 2')), 84, 48, 4);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Kant Lipczyńskiej" and sector_id = (select id from sector where name = 'Lipczyńska 2')), 83, 41, 5);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Kant Lipczyńskiej" and sector_id = (select id from sector where name = 'Lipczyńska 2')), 81, 34, 6);


insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Łapiński-Paszucha" ), 31, 71, 1);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Łapiński-Paszucha" ), 41, 1, 2);


insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Zachodni Komin" ), 53, 64, 1);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Zachodni Komin" ), 43, 1, 2);


insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Orzeł mrożony" ), 44, 76, 1);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Orzeł mrożony" ), 48, 10, 2);


insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Klasyczna" ), 69, 70, 1);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Klasyczna" ), 48, 10, 2);


insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Rysa pokutników" ), 78, 67, 1);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Rysa pokutników" ), 48, 10, 2);

insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Kant Lipczyńskiej" and sector_id = (select id from sector where name = 'Lipczyńska 1')), 49, 74, 1);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Kant Lipczyńskiej" and sector_id = (select id from sector where name = 'Lipczyńska 1')), 48, 57, 2);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Kant Lipczyńskiej" and sector_id = (select id from sector where name = 'Lipczyńska 1')), 47, 51, 3);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Kant Lipczyńskiej" and sector_id = (select id from sector where name = 'Lipczyńska 1')), 46, 44, 4);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Kant Lipczyńskiej" and sector_id = (select id from sector where name = 'Lipczyńska 1')), 46, 34, 5);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Kant Lipczyńskiej" and sector_id = (select id from sector where name = 'Lipczyńska 1')), 42, 23, 6);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Kant Lipczyńskiej" and sector_id = (select id from sector where name = 'Lipczyńska 1')), 38, 15, 7);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Kant Lipczyńskiej" and sector_id = (select id from sector where name = 'Lipczyńska 1')), 38, 9, 8);

insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Niemy Cyk" ), 59, 57, 1);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Niemy Cyk" ), 57, 48, 2);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Niemy Cyk" ), 54, 35, 3);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Niemy Cyk" ), 52, 27, 4);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Niemy Cyk" ), 49, 19, 5);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Niemy Cyk" ), 47, 14, 6);
insert into Route_point (route_id, x_percent, y_percent, order_point)
values ((select id  from Route where name = "Niemy Cyk" ), 45, 10, 7);







CREATE INDEX idx_sector_id ON Route (sector_id);
CREATE INDEX idx_route_id ON Route_point (route_id);



