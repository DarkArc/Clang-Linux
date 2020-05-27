#!/bin/sh

UID="${UID:-$(id -u)}"

docker build -t clang_build_env:latest . &&\
docker run --rm -it --user $UID:$UID --cap-add=SYS_PTRACE --security-opt seccomp=unconfined --privileged=true -v $PWD/user_data/:/home/builduser/ -v $PWD/../files:/build_env/ --entrypoint="/build_sys_internal/shell/start.sh" clang_build_env:latest
