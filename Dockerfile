FROM nginx:latest

COPY ./index.html /usr/share/nginx/html/index.html
COPY ./login.html /usr/share/nginx/html/login.html
COPY ./assets/* /usr/share/nginx/html/assets/
COPY ./css/* /usr/share/nginx/html/css/
COPY ./js/* /usr/share/nginx/html/js/
COPY ./about/* /usr/share/nginx/html/about/
COPY ./logos/* /usr/share/nginx/html/logos/
COPY ./portfolio/* /usr/share/nginx/html/portfolio/
COPY ./portfolio2/* /usr/share/nginx/html/portfolio2/
COPY ./team/* /usr/share/nginx/html/team/
