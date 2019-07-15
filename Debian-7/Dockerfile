# The Debian 7 builder
FROM debian:7
# get the important packages
RUN sed -i 's|'etc/apt/sources.list'|deb http://security.debian.org/ wheezy/updates main|g' /etc/apt/sources.list
RUN sed -i 's|'etc/apt/sources.list'|deb http://ftp.fr.debian.org/debian wheezy-updates main|g' /etc/apt/sources.list
RUN sed -i 's|'etc/apt/sources.list'|deb http://deb.debian.org wheezy/main amd64 Packages|g' /etc/apt/sources.list
RUN echo "deb http://archive.debian.org debian wheezy main contrib non-free" >> /etc/apt/sources.list
RUN echo "deb http://archive.debian.org debian dists wheezy non-free binary-amd64" >> /etc/apt/sources.list
RUN apt-get update && apt-get upgrade -y && apt-get install python3-pip -y
RUN python3 -m pip install --upgrade pip
RUN apt-get -y install git wget tar make
RUN apt-get -y install gcc g++ make libxml2-dev libboost-dev libboost-test-dev libboost-system-dev libpcre3-dev re2c
RUN apt-get -y install libxext-dev libreadline-dev libx11-dev
RUN python3 -m pip install distro
# copy the script
COPY ./run_build.sh ./
# run the script
CMD ["bash","run_build.sh"]
