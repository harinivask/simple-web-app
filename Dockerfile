FROM amazonlinux:2

#Install the necessary packages and apache and unzip and wget..
RUN yum -y update && yum -y install httpd
RUN yum install -y wget && yum install -y unzip
RUN yum clean all

#Start the server
ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]
