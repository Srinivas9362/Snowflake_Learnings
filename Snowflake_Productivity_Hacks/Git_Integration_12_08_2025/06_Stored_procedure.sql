use role accountadmin;
use database git_demo;
use schema public;

show tables;

select * from customer;

create or replace table inventory (
id int,
column1 int,
column2 date,
column3 varchar);

show tables;

desc table inventory;

insert into inventory
values
(1,1,current_date(), ' Hello-01'),
(2,2,current_date(), ' Hello-02'),
(3,3,current_date(), ' Hello-03'),
(4,-1,current_date(), ' Hello-04'),
(5,-2,current_date(), ' Hello-05');

select * from inventory;

select * from inventory where column1 = -2;


alter git repository my_github_public_repo fetch;

list @my_github_public_repo/branches/main/;

execute immediate from @my_github_public_repo/branches/main/Filter_SP_call.sql;


call filter_by_column_value('Inventory', ' Hello-04');