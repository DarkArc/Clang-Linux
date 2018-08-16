FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
cmake \
g++ \
binutils-gold \
ninja-build \
python

COPY src/build_user_src.rc /build_user_src.rc
COPY src/start_shell.sh /start_shell.sh
COPY src/setup_clang_build.sh /build_env/setup_clang_build.sh
