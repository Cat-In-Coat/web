sudo apt-get update
sudo apt-get install -f python3.5
sudo curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py"
sudo python3.5 get-pip.py
sudo pip install django
sudo pip install gunicorn
sudo rm /etc/nginx/sites-enabled/default
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/defult
sudo /etc/init.d/nginx restart
sudo ln -sf /home/box/web/etc/gunicorn-django.conf /etc/gunicorn.d/test-django
cd /home/box/web/ask
gunicorn ask.wsgi