# DOCKER-VERSION 0.3.4
EXPOSE 22 
FROM    centos:centos6
RUN yum install -y \
	git\
	ntpdate\
	curl\
	openssh-server\
	ruby\
	rdoc;\
	yum -y clean all;
RUN yum install -y \
	openssh\
	openssh-clients\
	redhat-lsb;
RUN mkdir -p /var/run/sshd
RUN echo root:root | chpasswd
EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
	

