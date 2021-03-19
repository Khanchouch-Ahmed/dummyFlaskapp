FROM tiangolo/uwsgi-nginx-flask:python3.6-alpine3.7
RUN apk --update add bash nano
ENV STATIC_URL /static
ENV STATIC_PATH /var/www/app/static
COPY ./uwsgi.ini /var/www/uwsgi.ini
COPY ./requirements.txt /var/www/requirements.txt
COPY ./app/__init__.py /var/www/app/__init__.py
COPY ./main.py /var/www/main.py
COPY ./app/views.py /var/www/app/views.py
RUN pip install -r /var/www/requirements.txt
RUN chmod -R 755 /etc/nginx/ 
