#!/bin/sh
docker pull archlinux:latest
docker build --no-cache -t clang_build_env:latest .
