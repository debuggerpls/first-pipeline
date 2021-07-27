FROM centos:7

RUN yum install git make gcc gcc-c++ glibc-devel.i686 glibc-devel.x86_64 flex bison grub2 xorriso mtools python3-pip -y
RUN yum install epel-release -y
RUN yum update -y
RUN yum install jq -y
RUN pip3 install j2cli j2cli[yaml]

