#!/bin/sh
cd build/
cmake -G Ninja -DLLVM_USE_LINKER=lld ../llvm/

