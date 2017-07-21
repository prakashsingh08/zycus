FROM centos:centos6

#to install java
ADD jdk1.8_121 /opt/soft/
ENV JAVA_HOME /opt/soft/jdk1.8_121
ENV PATH $PATH:/opt/soft/jdk1.8_121

#to install python
RUN yum install -y centos-release-scl && \
    yum install -y python27 && \
    RUN echo -e "[mongodb]\nname=MongoDB Repository\nbaseurl=https://repo.mongodb.org/yum/redhat/7/mongodb-org/3.2/`uname -m`/\ngpgcheck=0\nenabled=1" > /etc/yum.repos.d/mongodb.repo && \
    yum install -y mongodb-org
	
#to install tomcat
ADD tomcat8.tar.gz /opt/soft/

WORKDIR /opt/soft/tomcat8/bin

EXPOSE 7080
CMD ["catalina.sh", "run"]
