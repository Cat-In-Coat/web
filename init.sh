sudo rm -rf /etc/nginx/sites-enabled/default
sudo ln -sf /home/box/web/etc/nginx.conf   /etc/nginx/sites-enabled/defult
sudo /etc/init.d/nginx restart
