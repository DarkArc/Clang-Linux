#!/bin/sh
cd build/
cmake -G Ninja -DLLVM_USE_LINKER=lld -DCMAKE_EXPORT_COMPILE_COMMANDS=ON ../llvm/

