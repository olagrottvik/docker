FROM centos:7
LABEL Name=docker Version=0.0.1
RUN mkdir /home/builder
WORKDIR /home/builder
RUN yum update -y
COPY . /home/builder
RUN ls -la
RUN chmod +x build-dep.sh
RUN ./build-dep.sh