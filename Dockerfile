FROM ubi8/ubi:8.3
LABEL description="This is a container image that has all the basic tools for troubleshooting, as well as running httpd"
MAINTAINER Syed Hassan <shassan@redhat.com>
RUN yum install -y openssh-server && yum install -y openssh-clients && yum install -y net-tools && yum install -y curl && yum install
 -y wget && yum install -y iproute && yum install -y traceroute && yum install -y tcpdump.x86_64 && yum install -y httpd && yum insta
ll -y iputils && yum clean all -y
RUN yum install -y bind-utils
RUN echo "This is a test pod" > /var/www/html/index.html
EXPOSE 80
