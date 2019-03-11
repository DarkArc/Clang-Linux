#!/bin/sh
cmake -G Ninja -DLLVM_TARGETS_TO_BUILD="X86" -DCMAKE_EXPORT_COMPILE_COMMANDS=ON -DLLVM_USE_LINKER=gold -DLLVM_USE_SPLIT_DWARF=ON -DCMAKE_SHARED_LINKER_FLAGS="-fuse-ld=gold -Wl,--gdb-index" -DCMAKE_EXE_LINKER_FLAGS="-fuse-ld=gold -Wl,--gdb-index" ../llvm/
