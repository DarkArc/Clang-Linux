mkdir -p ../build &&\
docker build -t clang_build_env:latest . &&\
docker run --rm -it --user $UID -v $PWD/../clang:/build_env/clang -v $PWD/../llvm:/build_env/llvm -v $PWD/../build:/build_env/build --entrypoint="/start_shell.sh" clang_build_env:latest
