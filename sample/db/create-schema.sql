CREATE USER test IDENTIFIED BY welcome1;

GRANT CONNECT TO identity;
GRANT RESOURCE TO identity;

ALTER USER test QUOTA UNLIMITED ON USERS;
