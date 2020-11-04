sudo chown -R www-data:www-data /var/www
sudo usermod -aG www-data username
sudo chmod go-rwx /var/www
sudo chmod go+x /var/www
sudo chgrp -R www-data /var/www
sudo chmod -R go-rwx /var/www
sudo chmod -R g+rwx /var/www