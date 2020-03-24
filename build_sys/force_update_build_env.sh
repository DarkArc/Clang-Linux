#!/bin/sh
docker pull ubuntu:latest
docker build --no-cache -t clang_build_env:latest .
