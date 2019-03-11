# LLVM Docker Build Environment

## Initial Setup Instructions

1. Install Docker CE
2. Inside of the `files` directory:
   1. Perform a standard llvm setup, in a folder named `llvm`
   2. Create a `build` directory
3. Enter the `build_sys` directory
4. Run `force_update_build_env.sh`
5. Run `enter_build_env.sh`
6. Enter `build`
7. Run `setup_clang_build.sh`
8. Run `ninja`

### Example Directory Structure

```
repo/
  build_sys/
  files/
    build/
    llvm/
  README.md
  ...
```

## Subsequent Usage

Following initial setup, you can cut out many steps.
Running the build becomes as simple as:
1. Run `enter_build_env.sh`
2. Enter `build`
3. Run `ninja`
