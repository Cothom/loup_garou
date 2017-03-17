drop table users;
create table users (
	login nvarchar2(100) not null PRIMARY KEY,
	password nvarchar2(100) not null
);

insert into users values ('contet', 'contet');
insert into users values ('gilliotm', 'gilliotm');
insert into users values ('ranaivmi', 'ranaivmi');
insert into users values ('trompeth', 'trompeth');
