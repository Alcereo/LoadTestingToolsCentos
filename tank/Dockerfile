FROM centos

RUN yum -y update
RUN yum -y install epel-release
RUN yum -y install python-pip
RUN pip install --upgrade setuptools
RUN pip install --upgrade pip

ADD ./tank_src /tank/
ADD ./pip_dependencies /pip_dependencies

RUN yum -y install gcc
RUN yum -y install python-devel.x86_64
RUN yum -y install libffi-devel.x86_64
RUN yum -y install openssl-devel

#RUN mkdir DWN_DPNDS
#RUN pip download /tank -d /DWN_DPNDS

#RUN pip download flake8 -d /DWN_DPNDS
#RUN pip download pytest-runner -d /DWN_DPNDS
#RUN pip download pwntools -d /DWN_DPNDS

RUN pip install --no-index --find-links /pip_dependencies flake8
RUN pip install --no-index --find-links /pip_dependencies pytest-runner
RUN pip install --no-index --find-links /pip_dependencies /tank

CMD echo "Shell is starting" && /bin/bash