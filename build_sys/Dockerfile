FROM archlinux:latest

RUN pacman -Syu --noconfirm && pacman -S --noconfirm \
bc \
cmake \
clang \
binutils \
gdb \
ninja \
python \
diffutils \
python-psutil

RUN cd /usr/include && ln -s locale.h xlocale.h

RUN groupadd -g 1000 builduser && useradd -u 1000 -g 1000 builduser

COPY src/build_user_src.rc /build_user_src.rc
COPY src/start_shell.sh /start_shell.sh

ADD src/commands /custom_commands

RUN chown -R 1000:1000 /usr/local

VOLUME /home/builduser/

ENV CC clang
ENV CXX clang++
