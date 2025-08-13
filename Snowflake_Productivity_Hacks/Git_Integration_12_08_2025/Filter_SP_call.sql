create or replace procedure filter_by_column_value(table_name varchar, column_value varchar)

returns table(id number, column1 number, column2 date, column3 text)
language python
runtime_version = '3.9'
packages = ('snowflake-snowpark-python')
imports = ('@git_demo.public.my_github_public_repo/branches/main/filter.py')
handler = 'filter.filter_by_column_value';