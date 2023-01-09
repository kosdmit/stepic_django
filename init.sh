sudo ln -sf /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/nginx.conf
sudo rm -rf /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx stop
sudo /etc/init.d/nginx start