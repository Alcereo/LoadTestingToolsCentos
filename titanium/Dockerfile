FROM centos

RUN yum -y update
RUN yum -y install epel-release
RUN yum -y install python-pip

RUN pip install --upgrade setuptools
RUN pip install --upgrade pip

# ---

RUN yum -y install gcc
RUN yum -y install python-devel.x86_64
RUN yum -y install libffi-devel.x86_64
RUN yum -y install openssl-devel


ADD ./pip_dependencies /pip_dependencies
#RUN pip download bzt -d /pip_dependencies

RUN pip install --no-index --find-links /pip_dependencies bzt

# ---- TESTS

# PHANTOM ISNTALL ++

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

#--


ADD ./quick_test.yml /quick_test.yml

#CMD echo "Shell is starting" && /bin/bash
CMD bzt /quick_test.yml
