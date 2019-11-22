FROM nginx:1.17.4-alpine
ADD dist/spa/ /usr/share/nginx/html

ADD nginx.conf /etc/nginx

EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]