create table Rock(
id int not null AUTO_INCREMENT,
name varchar(100),
primary key (id)
);

create table Sector(
id int not null AUTO_INCREMENT,
route_id int not null,
name varchar(100),
primary key (id),
FOREIGN KEY (route_id) REFERENCES Route(id)
);



create table Route(
id int not null AUTO_INCREMENT,
rock_id int not null,
name varchar(100),
description varchar(500),
difficulty_level varchar(10),
primary key (id),
FOREIGN KEY (rock_id) REFERENCES Rock(id)
);