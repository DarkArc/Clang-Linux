FROM ubuntu:latest

# Use US Mirror
RUN sed --in-place --regexp-extended "s/(\/\/)(archive\.ubuntu)/\1us.\2/" /etc/apt/sources.list && \
apt-get update && apt-get upgrade --yes

RUN apt-get update && apt-get install -y \
bc \
cmake \
cmake-curses-gui \
g++-8 \
binutils-gold \
libtinfo-dev \
gdb \
ninja-build \
python \
libfindbin-libs-perl \
zlib1g-dev \
rr \
python-psutil \
exuberant-ctags

RUN cd /usr/include && ln -s locale.h xlocale.h

RUN groupadd -g 1000 builduser && useradd -u 1000 -g 1000 builduser

COPY src/build_user_src.rc /build_user_src.rc
COPY src/start_shell.sh /start_shell.sh

ADD src/commands /custom_commands

RUN chown -R 1000:1000 /usr/local

VOLUME /home/builduser/

ENV CC gcc-8
ENV CXX g++-8
