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
python-psutil \
fish \
git

RUN cd /usr/include && ln -s locale.h xlocale.h && mkdir /build_sys_internal

RUN groupadd -g 1000 builduser && useradd -u 1000 -g 1000 builduser

ADD src/shell /build_sys_internal/shell
ADD src/commands /build_sys_internal/custom_commands

RUN chown -R 1000:1000 /usr/local

VOLUME /home/builduser/

ENV CC clang
ENV CXX clang++
