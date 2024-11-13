# SFUISE2

SFUISE2 is a ROS2 package of the original system for Spline Fusion for UWB-Inertial State EStimation ([SFUISE](https://github.com/ASIG-X/SFUISE)). 

## Dataset conversion
You may use [rosbags-convert](https://ternaris.gitlab.io/rosbags/topics/convert.html) to convert the [UTIL](https://utiasdsl.github.io/util-uwb-dataset/) datset from ROS to ROS2

## Compilation
```
cd ros2_ws/src/
git clone https://github.com/ASIG-X/SFUISE2
cd ..
colcon build --symlink-install --packages-select cf_msgs
```
## Contributors
Kailai Li (Email: kailai.li@rug.nl)

Ziyu Cao (Email: ziyu.cao@liu.se)
## License
The source code is released under [GPLv3](https://www.gnu.org/licenses/) license.

We are constantly working on improving our code. For any technical issues, please contact Kailai Li (kailai.li@rug.nl).
