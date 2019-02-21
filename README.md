# docker

## How to run centos_base on WSL with GUI applications + added filesystem
docker run -it --rm -e DISPLAY=<host_ip>:0.0 -v <host_path>:<docker_path> olagrottvik/centos_base

## How to run centos_base on linux with GUI applications + added filesystem
docker run -it --rm --net=host --env="DISPLAY" -v <host_path>:<docker_path> olagrottvik/centos_base

To test that everything works right run ROOT, you will see the ROOT splash