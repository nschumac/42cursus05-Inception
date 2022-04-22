CREATE DATABASE wordpress;
/* Should be admin has all Privileges */
CREATE USER 'nschumac'@'%' IDENTIFIED BY '123';

/* 
adds admin privileges to user nschumac
GRANT flush and reloads everything 
*/
GRANT ALL ON wordpress.* TO 'nschumac'@'%';
FLUSH PRIVILEGES;
ALTER USER 'root'@'localhost' IDENTIFIED BY '123';