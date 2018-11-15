FROM ubuntu:latest

# Use US Mirror
RUN sed --in-place --regexp-extended "s/(\/\/)(archive\.ubuntu)/\1us.\2/" /etc/apt/sources.list && \
apt-get update && apt-get upgrade --yes

RUN apt-get update && apt-get install -y \
cmake \
cmake-curses-gui \
clang \
lld \
lldb \
ninja-build \
python

RUN groupadd -g 1000 builduser && useradd -u 1000 -g 1000 builduser

COPY src/build_user_src.rc /build_user_src.rc
COPY src/start_shell.sh /start_shell.sh
COPY src/setup_clang_build.sh /build_env/setup_clang_build.sh

ENV CC clang
ENV CXX clang++