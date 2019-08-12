create table Rock(
id int not null AUTO_INCREMENT,
name varchar(100),
primary key (id)
);

create table Route(
id int not null AUTO_INCREMENT,
name varchar(100),
description varchar(500),
difficulty_level varchar(10),
primary key (id)
);