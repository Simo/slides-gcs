FROM 'centos'
USER root

LABEL mantainer="Simone Bierti <simone.bierti@insiel.it>"

# Update image
RUN yum update -y
RUN yum install httpd -y

COPY index.html /var/www/html/index.html
EXPOSE 80

# Start the service
CMD ["-D", "FOREGROUND"]
ENTRYPOINT ["/usr/sbin/httpd"]