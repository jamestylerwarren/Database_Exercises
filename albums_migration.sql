use codeup_test_db;

drop table if exists albums;

create table albums (
	id int unsigned not null auto_increment,
	artist varchar(100),
	record varchar(100),
	release_date YEAR,
	sales varchar (100),
	genre varchar (200),
	primary key (id)
);