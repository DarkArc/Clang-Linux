#!/bin/sh
docker pull fedora:latest
docker build --no-cache -t clang_build_env:latest .
