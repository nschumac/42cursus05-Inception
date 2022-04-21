CREATE DATABASE wordpress;
/* Should be admin has all Privileges */
CREATE USER 'nschumac'@'%' IDENTIFIED BY '123';

/* Should be normal User has no Privileges */
CREATE USER 'nschumac2'@'%' IDENTIFIED BY '1234';

/* 
adds admin privileges to user nschumac
GRANT flush and reloads everything 
*/
GRANT ALL ON *.* TO 'nschumac'@'%';
FLUSH PRIVILEGES;
