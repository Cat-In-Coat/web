virtualenv -p python3 myvenv
source myvenv/bin/activate
pip install --upgrade pip
pip install django
pip install gunicorn
sudo rm -rf /etc/nginx/sites-enabled/default
sudo ln -sf /home/box/web/etc/nginx.conf   /etc/nginx/sites-enabled/defult
sudo /etc/init.d/nginx restart
cd /home/box/web/ask/ask
gunicorn -b 0.0.0.0:8080 wsgi:application