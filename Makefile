all: nvidia ros2

nvidia: nvidia.repos
	mkdir -p src/nvidia
	vcs import --input nvidia.repos src/nvidia

ros2: ros2.repos
	mkdir -p src/ros2
	vcs import --input ros2.repos src/ros2

deps:
	sudo rosdep init
	rosdep update
	rosdep install --from-paths src --ignore-src -y --skip-keys "fastcdr rti-connext-dds-6.0.1 urdfdom_headers" --rosdistro humble -r

build:
	colcon build --merge-install --install-base /opt/ros/humble --continue-on-error --cmake-args -D Python3_EXECUTABLE=/usr/bin/python3.8 --cmake-clean-cache
