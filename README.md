
## Initial Setup Instructions

1. Install Docker CE
2. Put your llvm source into a folder named `llvm`
3. Put your clang source into a folder named `clang`
4. Create an empty folder `build`
5. Enter `build_sys`
6. Run `force_update_build_env.sh`
7. Run `enter_build_env.sh`
8. Run `setup_clang_build.sh`
9. Enter `build`
10. Run `ninja`

### Example Directory Structure

```
repo/
  build/
  build_sys/
  clang/
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
