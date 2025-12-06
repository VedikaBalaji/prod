FROM almalinux
RUN yum install httpd -y
RUN echo "Welcome to to web container" > /var/www/html/index.html