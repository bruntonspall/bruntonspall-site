FROM nginx:1.7.10
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY public /sites/bruntonspall

