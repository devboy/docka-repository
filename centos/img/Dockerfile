FROM centos:latest

ENV LC_ALL en_US.utf8
RUN mkdir -p /run/lock
RUN yum -y install deltarpm && yum -y update && yum clean all

RUN yum -y install epel-release unzip docker
RUN curl -L https://github.com/docker/machine/releases/download/v0.5.0/docker-machine_linux-amd64.zip > machine.zip
RUN unzip machine.zip
RUN rm machine.zip
RUN mv docker-machine* /usr/local/bin
RUN yum install -y stow

ADD init.sh /root/init.sh
RUN chmod +x /root/init.sh

CMD /root/init.sh
