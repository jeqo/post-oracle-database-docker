CREATE USER test IDENTIFIED BY welcome1;

GRANT CONNECT TO test;
GRANT RESOURCE TO test;

ALTER USER test QUOTA UNLIMITED ON USERS;
