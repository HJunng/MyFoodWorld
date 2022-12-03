create table if not exists member(
	id varchar(12) not null,
	passwd varchar(20),
	name varchar(20),
	primary key (id)
)default charset=utf8;

drop table member;

insert into member values('admin','admin1234','관리자');
insert into member values('guest','guest1234','손님1');