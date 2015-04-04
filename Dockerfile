FROM nginx:1.7.10
MAINTAINER Michael Brunton-Spall <michael@brunton-spall.co.uk>
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY public /sites/bruntonspall

