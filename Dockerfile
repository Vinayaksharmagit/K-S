FROM centos:7
RUN yum install httpd -y
ADD https://s3-us-west-2.amazonaws.com/studentapi-cit/index.html /var/www/html/index.html
RUN chmod  777 /var
RUN chmod  777 /var/www
RUN chmod  777 /var/www/html
RUN chmod  664 /var/www/html/index.html
COPY proxy.conf /etc/httpd/conf.d/proxy.conf
EXPOSE 80
CMD httpd -DFOREGROUND
