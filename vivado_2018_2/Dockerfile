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
RUN yum install centos-release-scl boost-devel make devtoolset-7-gcc-c++ cmake3 libusb* libstdc++* libXft* libXext* Xvfb glibc.i686 -y
RUN pip3 install --upgrade pip 
RUN pip3 install pyserial in_place PyCRC cobs uart
RUN mkdir /home/builder/xilinx
COPY ./xilinx /home/builder
RUN cd /home/builder/xilinx
RUN curl -L "https://xilinx-ax-dl.entitlenow.com/dl/ul/2018/06/15/R209939835/Xilinx_Vivado_SDK_2018.2_0614_1954.tar.gz/918c4b1f03221aabb37fadd955b72737/5C66645B?akdm=0&filename=Xilinx_Vivado_SDK_2018.2_0614_1954.tar.gz" -o Xilinx_Vivado_SDK_2018.2_0614_1954.tar.gz
RUN tar xvf Xilinx_Vivado_SDK_2018.2_0614_1954.tar.gz
