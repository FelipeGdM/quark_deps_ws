# ROS 2 humble compilation helper

This project provides helper structure to compile ROS 2 Humble from source in a Jetson Xavier NX platform

## Disabled packages

- vision\_msgs\_rviz\_plugins

## Lesons learned

- Some nvidia libraries require a newer version of cmake. It is possible to download it from the [official website](https://cmake.org/download/). A quick solution may be:

```bash
mkdir -p ~/tmp
cd ~/tmp
wget https://github.com/Kitware/CMake/releases/download/v3.27.0/cmake-3.27.0-linux-aarch64.sh
sudo chmod +x cmake-3.27.0-linux-aarch64.sh

cd ~/.local
~/tmp/cmake-3.27.0-linux-aarch64.sh
```

- A nice helper to compile openCV with CUDA support is available [in Github](https://github.com/mdegans/nano_build_opencv)
