# DOCKER-VERSION 0.3.4
FROM    centos:centos6
RUN yum install -y \
	git\
	ntpdate\
	curl\
	sshd\
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
CMD /usr/sbin/sshd -D
	

