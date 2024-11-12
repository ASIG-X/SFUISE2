cmake_minimum_required(VERSION 3.5)
project(cf_msgs)

#find_package(catkin REQUIRED message_generation std_msgs)

find_package(ament_cmake REQUIRED)
find_package(std_msgs REQUIRED)
find_package(builtin_interfaces REQUIRED)
find_package(rosidl_default_generators REQUIRED)

rosidl_generate_interfaces(${PROJECT_NAME}
  "msg/Gyro.msg"
  "msg/Accel.msg"
  "msg/Tdoa.msg"
  "msg/Twr.msg"
  "msg/Tof.msg"
  "msg/Baro.msg"
  "msg/Flow.msg"
  DEPENDENCIES builtin_interfaces std_msgs
 )

ament_package()
