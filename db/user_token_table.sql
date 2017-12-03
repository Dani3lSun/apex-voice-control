-- Create table
create table USER_TOKEN
(
  user_name         varchar2(100) not null,
  user_access_token varchar2(255) not null,
  create_timestamp  timestamp with time zone not null
)
;
-- Create/Recreate primary, unique and foreign key constraints 
alter table USER_TOKEN
  add constraint USER_TOKEN_PK primary key (USER_NAME);
