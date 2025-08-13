use role sysadmin;

use role accountadmin;

show tables;

show warehouses;

create or replace database git_demo;

--syntax
create or replace secret my_github_secret
type=passoword
username = '<github Account name>'
password = '<Git Hub access token>';

--original syntax with parameters
create or replace secret my_github_secret
type = password
username = 'Srinivas9362'
password = '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';

show secrets;

--create integration object with secure object
Create or replace api integration my_git_api_integration
api_provider = git_https_api
api_allowed_prefixes = ('https://github.com/Srinivas9362/')
allowed_authentication_secrets = (my_github_secret)
enabled = true;

-- drop secret my_github_secret;

--use one role to create all this

show api integrations;
show integrations;

--note 
----Integrations are Account Level Objects


Create or replace git repository my_github_repo
api_integration = my_git_api_integration
git_credentials = my_github_secret
origin = 'https://github.com/Srinivas9362/Snowflake_Learnings';

show git repositories;



