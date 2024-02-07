sudo pip3 install -r requirements.txt
sudo cp dummy.ini /etc/uwsgi/apps/
sudo cp agents_dummy.conf /etc/supervisor/conf.d/
sudo cp agents_dummy_nginx.conf /etc/nginx/sites-enabled/
sudo supervisorctl update
sudo systemctl restart nginx
sudo certbot --nginx -d dummy.ai.medsenger.ru
