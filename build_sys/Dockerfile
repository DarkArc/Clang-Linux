# Build RR
FROM fedora:latest
WORKDIR /home/build
RUN dnf install -y \
  ccache \
  cmake \
  make \
  gcc \
  gcc-c++ \
  gdb \
  libgcc \
  libgcc.i686 \
  glibc-devel \
  glibc-devel.i686 \
  libstdc++-devel \
  libstdc++-devel.i686 \
  python3-pexpect \
  man-pages \
  ninja-build \
  capnproto \
  capnproto-libs \
  capnproto-devel \
  ninja-build \
  git
RUN ln -s /usr/include/c++/10/i686-redhat-linux /usr/include/c++/10/x86_64-redhat-linux
RUN git clone https://github.com/mozilla/rr.git
RUN mkdir build && cd build && \
  cmake -DCMAKE_INSTALL_PREFIX="/home/build/install/" -G Ninja ../rr && \
  cmake --build . && \
  cmake --build . --target install

# Build the Build System Container
FROM fedora:latest

RUN dnf install -y \
  bc \
  cmake \
  clang \
  binutils \
  gdb \
  ninja-build \
  python \
  diffutils \
  python-psutil \
  capnproto-libs \
  fish \
  git \
  which \
  findutils
COPY --from=0 /home/build/install/ /usr/local/

RUN cd /usr/include && ln -s locale.h xlocale.h && mkdir /build_sys_internal

RUN groupadd -g 1000 builduser && useradd -u 1000 -g 1000 builduser

ADD src/shell /build_sys_internal/shell
ADD src/commands /build_sys_internal/custom_commands

RUN chown -R 1000:1000 /usr/local

VOLUME /home/builduser/

ENV CC clang
ENV CXX clang++
