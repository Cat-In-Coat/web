sudo apt-get update
sudo apt-get install -f python3.5
sudo curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py"
sudo python3.8.3 get-pip.py
sudo pip3 install django
sudo pip3 install gunicorn
sudo pip3 install pysqlite3
sudo rm /etc/nginx/sites-enabled/default
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/defult
sudo /etc/init.d/nginx restart
sudo ln -sf /home/box/web/etc/gunicorn-django.conf /etc/gunicorn.d/test-django
cd /home/box/web/ask
gunicorn --config=/home/box/web/etc/gunicorn-django.conf -b 0.0.0.0:8000 ask.wsgi