FROM tutum/nginx

RUN rm /etc/nginx/sites-enabled/default
ADD sites-enabled/ /etc/nginx/sites-enabled

# Copy the static folder over
COPY /static/ /code/static/

EXPOSE 80