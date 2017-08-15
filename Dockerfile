FROM openzim/mwoffliner

RUN apt-get -y update
RUN apt-get -y install g++
RUN apt-get -y install git
RUN apt-get -y install autoconf 
RUN apt-get -y install make 
RUN apt-get -y install automake 
RUN apt-get -y install libtool
RUN apt-get -y install liblzma-dev
RUN git clone https://gerrit.wikimedia.org/r/p/openzim.git
RUN cd openzim/zimlib && ./autogen.sh && ./configure
RUN cd openzim/zimlib && make -j4