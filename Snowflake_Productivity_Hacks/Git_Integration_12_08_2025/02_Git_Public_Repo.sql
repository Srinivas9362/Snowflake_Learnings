use role sysadmin;

use role accountadmin;

show tables;

show warehouses;

use database git_demo;

-- create or replace database git_demo;

-- --syntax
-- create or replace secret my_github_secret
-- type=passoword
-- username = '<github Account name>'
-- password = '<Git Hub access token>';

-- --original syntax with parameters
-- create or replace secret my_github_secret
-- type = password
-- username = 'Srinivas9362'
-- password = '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';

show secrets;

--for the public no need to create the secrect object


--create integration object with secure object
Create or replace api integration my_public_git_api_integration
api_provider = git_https_api
api_allowed_prefixes = ('https://github.com/Srinivas9362/')
enabled = true;

-- drop secret my_github_secret;

--use one role to create all this

show api integrations;
show integrations;

--note 
----Integrations are Account Level Objects


Create or replace git repository my_github_public_repo
api_integration = my_public_git_api_integration
origin = 'https://github.com/Srinivas9362/lendingproject';

show git repositories;

show git branches in git repository my_github_public_repo;

show git branches in git repository my_github_repo;

ls @my_github_public_repo/branches/main;

ls @my_github_repo/branches/main;
