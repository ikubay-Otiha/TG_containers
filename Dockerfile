FROM nginx:latest

COPY nginx.conf /etc/nginx/nginx.conf
COPY sites-available /etc/nginx/sites-available
ADD sites-enabled /etc/nginx/sites-enabled

EXPOSE 80