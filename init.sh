#####init_nginx#####
# include our settings to nginx main config
sudo ln -sf /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/nginx.conf
# delete default location settings
sudo rm -rf /etc/nginx/sites-enabled/default
# start/restart nginx
sudo /etc/init.d/nginx stop
sudo /etc/init.d/nginx start

#####init_gunicorn#####
# delete example settings
sudo rm /etc/gunicorn.d/*
# include setting for hello.py to gunicorn
sudo ln -sf /home/box/web/etc/hello.conf /etc/gunicorn.d/hello.conf
# start gunicorn
sudo /etc/init.d/gunicorn start