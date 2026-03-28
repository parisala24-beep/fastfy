FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html
COPY nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 8080
CMD sed -i "s/\$PORT/${PORT:-8080}/g" /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'
