FROM centos:7
LABEL Name=docker Version=0.0.1
RUN mkdir /home/builder
WORKDIR /home/builder
RUN yum update -y
RUN yum install http://opensource.wandisco.com/centos/7/git/x86_64/wandisco-git-release-7-2.noarch.rpm -y
RUN yum install epel-release -y
RUN yum update -y
RUN yum groupinstall "Development Tools" -y
RUN yum install git yum-utils gcc make cmake python-pip python34 python34-pip python34-virtualenv sl graphviz ack wget -y
RUN yum install centos-release-scl boost-devel make cmake3 libusb* libstdc++* libXft* libXext* Xvfb glibc.i686 -y
RUN yum install devtoolset-7-gcc-c++ -y
RUN pip3 install --upgrade pip 
RUN pip3 install pyserial in_place PyCRC cobs uart
RUN wget https://root.cern/download/root_v6.16.00.Linux-centos7-x86_64-gcc4.8.tar.gz
RUN yum install binutils libX11-devel libXpm-devel libXft-devel libXext-devel -y
RUN yum install gcc-gfortran openssl-devel pcre-devel mesa-libGL-devel mesa-libGLU-devel glew-devel ftgl-devel mysql-devel fftw-devel cfitsio-devel graphviz-devel avahi-compat-libdns_sd-devel libldap-dev python-devel libxml2-devel gsl-static -y
RUN tar xvf root_v6.16.00.Linux-centos7-x86_64-gcc4.8.tar.gz
RUN rm -f root_v6.16.00.Linux-centos7-x86_64-gcc4.8.tar.gz
RUN useradd -ms /bin/bash builder
RUN chown builder:builder /home/builder
RUN chmod 700 /home/builder
USER builder
COPY .bashrc /home/builder/.bashrc