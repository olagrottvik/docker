#!/bin/bash
 
if [ "$(whoami)" != "root" ]
then
    echo "Please run as root"
    exit
fi

yum install http://opensource.wandisco.com/centos/7/git/x86_64/wandisco-git-release-7-2.noarch.rpm -y

yum install epel-release -y

yum update -y

yum install git yum-utils gcc make cmake python-pip python34 python34-pip python34-virtualenv sl graphviz ack -y

yum groupinstall "Development Tools" -y

yum install centos-release-scl -y

yum install boost-devel make devtoolset-7-gcc-c++ cmake3 libusb* libstdc++* libXft* libXext* Xvfb glibc.i686 -y

pip3 install --upgrade pip
pip3 install pyserial in_place PyCRC cobs uart

wget https://xilinx-ax-dl.entitlenow.com/dl/ul/2018/06/15/R209939822/Xilinx_Vivado_SDK_Web_2018.2_0614_1954_Lin64.bin/0edfc857855dc90b328faed6004196cb/5C66401E?akdm=0&filename=Xilinx_Vivado_SDK_Web_2018.2_0614_1954_Lin64.bin