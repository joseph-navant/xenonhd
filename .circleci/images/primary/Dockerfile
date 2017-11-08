FROM ubuntu:16.04

# Required packages
RUN \
	apt-get update && \
	apt-get install -y git ssh tar gzip ca-certificates ccache automake lzop bison gperf build-essential zip curl zlib1g-dev zlib1g-dev g++-multilib python-networkx libxml2-utils bzip2 libbz2-dev libbz2-1.0 libghc-bzlib-dev squashfs-tools pngcrush schedtool dpkg-dev liblz4-tool make optipng maven

# Java 8
RUN \
	apt-get remove -y openjdk-* icedtea-* && \
	apt-get install -y software-properties-common && \
	add-apt-repository -y ppa:openjdk-r/ppa && \
	apt-get update && \
	apt-get install -y openjdk-8-jdk

