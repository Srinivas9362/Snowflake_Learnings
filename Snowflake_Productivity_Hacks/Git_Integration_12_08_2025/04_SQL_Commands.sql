use role accountadmin;
use database git_demo;
use schema public;

desc git repository my_github_repo;

show git branches in git repository my_github_repo;

ls @my_github_repo/branches/main/;


--note for running all the git commanda no need of warehouses

show git tags in git repository my_github_repo;


ls @my_github_repo/commits/9bc55a989b0875952fff414d6f07fac2add717ea;

-- to fetch the changes
alter git repository my_github_repo fetch;


use role public;

drop git repository my_github_repo;

use role accountadmin;

drop git repository my_github_repo;

undrop git repository my_github_repo;

show git repositories;

alter git repository my_github_public_repo set
comment = 'this is the public repo for the demo';

desc git repository my_github_public_repo;


create or replace tag team_tag
allowed_values 'HR', 'Finanace';

alter git repository my_github_public_repo set
tag team_tag = 'HR';

show git repositories;

--note we can only alter api_integration and git_credentials only
--not we can't change the Origin or alter


create or replace tag git_demo_tag;


