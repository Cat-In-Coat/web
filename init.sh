apt-get update
apt-get install -f python3.5
curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py"
python3.5 get-pip.py
pip install django
pip install gunicorn
rm /etc/nginx/sites-enabled/default
cp /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/test.conf
cp /home/box/web/etc/gunicorn*.conf   /etc/gunicorn.d/
cp edinorogs/gunicorn-debian /usr/sbin/
cp edinorogs/gunicorn /usr/bin/
cp edinorogs/gunicorn_* /usr/bin/
sudo rm -rf /etc/nginx/sites-enabled/default
sudo ln -sf /home/box/web/etc/nginx.conf   /etc/nginx/sites-enabled/defult
sudo /etc/init.d/nginx restart
cd /home/box/web/ask/ask
sudo gunicorn -c /home/box/web/etc/gunicorn.conf hello:wsgi_application
sudo gunicorn -c /home/box/web/etc/gunicorn-django.conf ask.wsgi:application