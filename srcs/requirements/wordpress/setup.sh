cd /var/www/wordpress

wp core download --allow-root

#https://webkul.com/blog/install-wordpress-through-wp-cli-in-few-seconds/
wp core config --dbhost=$DB_HOST \
				--dbname=$DB_NAME \
				--dbuser=$DB_USER \
				--dbpass=$DB_PASSWORD \
				--dbprefix=wp_ \
				--allow-root

wp core install --url=$WP_URL \
				--title=$WP_TITLE \
				--admin_user=$WP_ADMIN_USER \
				--admin_password=$WP_ADMIN_PASSWORD \
				--admin_email=$WP_ADMIN_MAIL \
				--allow-root 

wp user create $WP_USER $WP_USER_MAIL --role=author --user_pass=$WP_USER_PASSWORD --allow-root

cd -
php-fpm7.3 -F