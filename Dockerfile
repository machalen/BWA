###########################################################
# Dockerfile to build BWA container image
# Based on Ubuntu
############################################################
#Build the image based on Ubuntu
FROM ubuntu:16.04

#Maintainer and author
MAINTAINER Magdalena Arnal <marnal@imim.es>

#Install required packages in ubuntu for BWA
RUN apt-get update
RUN apt-get install --yes build-essential gcc-multilib apt-utils zlib1g-dev wget git

#Install BWA
WORKDIR /usr/local/
RUN git clone https://github.com/lh3/bwa.git
WORKDIR /tmp/bwa
RUN git checkout v0.7.17
RUN make
