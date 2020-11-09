sudo apt-get update
sudo apt-get install -f python3.5
sudo curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py"
sudo python3.5 get-pip.py
pip install django
pip install gunicorn
sudo rm /etc/nginx/sites-enabled/default
cp /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/test.conf
cp /home/box/web/etc/gunicorn*.conf   /etc/gunicorn.d/
cp edinorogs/gunicorn-debian /usr/sbin/
cp edinorogs/gunicorn /usr/bin/
cp edinorogs/gunicorn_* /usr/bin/
sudo rm -rf /etc/nginx/sites-enabled/default
sudo ln -sf /home/box/web/etc/nginx.conf   /etc/nginx/sites-enabled/defult
sudo /etc/init.d/nginx restart
cd /home/box/web/ask
gunicorn ask.wsgi