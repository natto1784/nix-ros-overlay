
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-python, ament-lint-auto, ament-lint-common, control-msgs, diff-drive-controller, effort-controllers, gazebo-ros, gazebo-ros2-control, geometry-msgs, hardware-interface, joint-state-broadcaster, joint-trajectory-controller, launch, launch-ros, rclcpp, rclcpp-action, robot-state-publisher, ros2-control, ros2-controllers, std-msgs, velocity-controllers, xacro }:
buildRosPackage {
  pname = "ros-humble-gazebo-ros2-control-demos";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gazebo_ros2_control-release/archive/release/humble/gazebo_ros2_control_demos/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "ee4189b08b3bbf24b09afd12260d7c66ca02967d81f4d7fd53aa40e1a73e8bad";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rclcpp-action ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-python control-msgs diff-drive-controller effort-controllers gazebo-ros gazebo-ros2-control geometry-msgs hardware-interface joint-state-broadcaster joint-trajectory-controller launch launch-ros rclcpp robot-state-publisher ros2-control ros2-controllers std-msgs velocity-controllers xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''gazebo_ros2_control_demos'';
    license = with lib.licenses; [ asl20 ];
  };
}
