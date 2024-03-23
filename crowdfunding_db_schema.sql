drop table contacts
create table contacts(
contact_id int not null primary key,
first_name varchar (50) not null,
last_name varchar (50) not null,
email varchar (100) not null
);

select * from contacts

drop table category
create table category(
category_id varchar(100) primary key not null,
category_name varchar(75) not null

);
select * from category

drop table subcategory
create table subcategory(
subcategory_id varchar(50) not null primary key,
subcategory_name varchar(75) not null

);

select * from subcategory

drop table campaign
create table campaign(
cf_id int primary key,
contact_id int not null,
company_name varchar(100) not null,
description varchar (100) not null,
goal numeric(10,2) not null,
pledged numeric(10,2) not null,
outcome varchar not null,
backers_count int not null,
country varchar (3),
currency varchar (4),
launched_date date,
end_date date,
category_id varchar(10) not null,
subcategory_id varchar(10) not null,
	foreign key (contact_id) references contacts (contact_id),
	foreign key (category_id) references category (category_id),
	foreign key (subcategory_id) references subcategory (subcategory_id)
	
	
	
);

select * from campaign










