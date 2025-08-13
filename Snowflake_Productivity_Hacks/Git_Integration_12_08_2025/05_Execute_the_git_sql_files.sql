use role accountadmin;

use database git_demo;

use schema public;

show git repositories;

ls @MY_GITHUB_PUBLIC_REPO/branches/main/;
alter git repository my_github_public_repo fetch;


--it is case sensitice
execute immediate from @my_github_public_repo/branches/main/01-create-stage-objecs.sql;



