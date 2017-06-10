FROM centos

RUN yum -y update
RUN yum -y install epel-release

RUN yum -y install gcc.x86_64
RUN yum -y install gcc-c++.x86_64
RUN yum -y install binutils-devel.x86_64
RUN yum -y install openssl-devel
RUN yum -y install make
RUN yum -y install git

RUN git clone https://github.com/mamchits/phantom.git

RUN cd /phantom && make -R

RUN cp -R /phantom/lib/phantom /usr/lib/phantom
RUN ln /phantom/bin/phantom /usr/bin/phantom

CMD echo "Shell is starting" && /bin/bash