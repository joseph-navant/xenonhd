FROM ubuntu:16.04

# Required packages
RUN apt-get update && apt-get install -y git ssh tar gzip ca-certificates bc git-core gnupg flex bison python rar original-awk gawk p7zip-full gperf libsdl1.2-dev libesd0-dev squashfs-tools build-essential zip curl libncurses5-dev zlib1g-dev pngcrush schedtool libc6-dev x11proto-core-dev libx11-dev tofrodos python-markdown libxml2-utils g++-multilib lib32z1-dev lib32ncurses5-dev gcc-multilib g++-multilib xsltproc libreadline-gplv2-dev libwxgtk3.0-dev libgl1-mesa-dev 

RUN mkdir temp && cd temp && wget http://archive.ubuntu.com/ubuntu/pool/universe/m/mingw32/mingw32_4.2.1.dfsg-2ubuntu1_amd64.deb && wget http://archive.ubuntu.com/ubuntu/pool/universe/m/mingw32-binutils/mingw32-binutils_2.20-0.2ubuntu1_amd64.deb && wget http://archive.ubuntu.com/ubuntu/pool/universe/m/mingw32-runtime/mingw32-runtime_3.15.2-0ubuntu1_all.deb && dpkg -i mingw32* && cd .. && rm -R temp

# Install Java.
RUN \
	echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
	apt-get update && \
	apt-get install -y software-properties-common && \
	add-apt-repository -y ppa:webupd8team/java && \
	apt-get update && \
	apt-get install -y oracle-java8-installer && \
	rm -rf /var/lib/apt/lists/* && \
	rm -rf /var/cache/oracle-jdk8-installer


# Define working directory.
WORKDIR /data

# Define commonly used JAVA_HOME variable
ENV JAVA_HOME /usr/lib/jvm/java-8-oracle
ENV LANG C.UTF-8

CMD ["bash"]
