FROM ubuntu:18.04

# Install Nginx
RUN apt-get update
RUN apt-get install -y nginx apt-utils 
RUN apt-get install -y vim
RUN echo "\ndaemon off;" >> /etc/nginx/nginx.conf # foreground 실행
RUN chown -R www-data:www-data /var/lib/nginx # 오너:그룹 www-data로 변경
RUN sed -i 's/listen 80 default_server;/listen 8080 default_server;/' \
  /etc/nginx/sites-enabled/default # HTTP 요청 포트 80 >  포트 8080 변경
RUN sed -i 's/listen [::]:80 default_server/listen [::]:8080 \
  default_server/' /etc/nginx/sites-enabled/default

# Define Mountable Directory
VOLUME ["/etc/nginx/sites-enabled","/etc/nginx/certs","/etc/nginx/conf.d"
,"/var/log/nginx/","/usr/share/nginx/html/","/var/www/html"]

# Define Working Directory
WORKDIR /var/www/html
COPY ./2021_DEV_HTML/ ./

# Expose Port
EXPOSE 8080

# Define Default Command
CMD ["nginx"]
