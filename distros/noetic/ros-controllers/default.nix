
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ackermann-steering-controller, catkin, diff-drive-controller, effort-controllers, force-torque-sensor-controller, forward-command-controller, gripper-action-controller, imu-sensor-controller, joint-state-controller, joint-trajectory-controller, position-controllers, velocity-controllers }:
buildRosPackage {
  pname = "ros-noetic-ros-controllers";
  version = "0.21.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/noetic/ros_controllers/0.21.0-1.tar.gz";
    name = "0.21.0-1.tar.gz";
    sha256 = "a16b7d6c323fb7ba9df1bee367d0d7c827fdc80d767dadcf0087368cf9f97f87";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ ackermann-steering-controller diff-drive-controller effort-controllers force-torque-sensor-controller forward-command-controller gripper-action-controller imu-sensor-controller joint-state-controller joint-trajectory-controller position-controllers velocity-controllers ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Library of ros controllers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
