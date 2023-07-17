FROM ubi8/ubi:8.3
LABEL description="This is a custom image with basic tools"
MAINTAINER Syed Hassan <shassan@redhat.com>
RUN yum install -y openssh-server && yum install -y NetworkManager && yum install -y openssh-clients && yum install -y net-tools && yum install -y curl && yum install -y wget && yum install -y iproute && yum install -y traceroute && yum install -y tcpdump.x86_64 && yum install -y httpd && yum install -y iputils &&  yum install -y bind-utils && yum clean all -y
COPY ./busybox /usr/bin/busybox
RUN  ssh-keygen -f /etc/ssh/ssh_host_rsa_key -b 4096 -t rsa -N ""
# RUN echo "This is a test pod" > /var/www/html/index.html
EXPOSE 22
CMD ["/usr/sbin/sshd","-D"]
