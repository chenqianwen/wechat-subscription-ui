FROM nginx
RUN rm -rf /usr/share/nginx/html/*
COPY dist /usr/share/nginx/html
COPY nginx_conf /usr/share/nginx/conf/nginx.conf
COPY docker-entrypoint.sh /usr/local/bin/
ENTRYPOINT ["sh","/usr/local/bin/docker-entrypoint.sh"]