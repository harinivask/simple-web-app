FROM amazonlinux:2

#Install the necessary packages
RUN yum -y update && yum -y install httpd
RUN yum install -y wget && yum install -y unzip
RUN yum clean all

#Copy artifacts
COPY /home/ec2-user/simple-web-app-main/techmax-main/. apache-container:/var/www/html/
#RUN rm -rf techmax-main

#Start the server
ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]
