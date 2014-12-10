# DOCKER-VERSION 0.3.4
FROM    centos:centos6
# Enable EPEL for Node.js
RUN     rpm -Uvh ; \
	yum install -y npm;\
	yum -y clean all;
ADD . /src
RUN cd /src; \
	npm install --production; \
	rm -rf Dockerfile;
EXPOSE 3000
CMD cd src; \ 
	npm start
