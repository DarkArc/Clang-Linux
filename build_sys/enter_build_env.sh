docker build -t clang_build_env:latest . &&\
docker run --rm -it --user $UID:$UID --cap-add=SYS_PTRACE --security-opt seccomp=unconfined --privileged=true -v $PWD/user_data/:/home/builduser/ -v $PWD/../files:/build_env/ --entrypoint="/start_shell.sh" --memory=20g clang_build_env:latest
