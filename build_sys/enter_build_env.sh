docker build -t clang_build_env:latest . &&\
docker run --rm -it --user $UID:$UID --privileged=true -v $HOME/.bash_history:/bash_history -v $PWD/../files:/build_env/ --entrypoint="/start_shell.sh" clang_build_env:latest
