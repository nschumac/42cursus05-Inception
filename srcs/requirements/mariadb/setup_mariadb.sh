
#create config.sql and pipe it into mysql to set up users
cat << EOF > config.sql

CREATE DATABASE wordpress;

/* Should be admin has all Privileges */
CREATE USER '$DB_USER'@'%' IDENTIFIED BY '$DB_PASSWORD';

/* 
adds admin privileges to user nschumac
GRANT flush and reloads everything 
*/
GRANT ALL PRIVILEGES ON wordpress.* TO '$DB_USER'@'%';

ALTER USER 'root'@'localhost' IDENTIFIED BY '$DB_ROOT_PASSWORD';
EOF

# start mysql
service mysql start

# pipe settings into mysql
mysql < config.sql

rm -rf config.sql

mysqld_safe