Before building mount the pre-installed Xilinx and Mentor dirs in /opt
mkdir opt
mkdir opt/Xilinx
mkdir opt/Mentor
sudo mount --bind /opt/Xilinx opt/Xilinx
sudo mount --bind /opt/Mentor opt/Mentor

Build with:
docker build -t <imagename:version> .

e.g:
docker build -t olagrottvik/vivado:2018_2 .