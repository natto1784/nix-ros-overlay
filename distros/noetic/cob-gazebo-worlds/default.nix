
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-default-env-config, controller-manager, gazebo-msgs, gazebo-ros, gazebo-ros-control, joint-state-controller, joint-state-publisher, position-controllers, robot-state-publisher, roslaunch, rospy, rostest, std-msgs, tf, tf2-ros, velocity-controllers, xacro }:
buildRosPackage {
  pname = "ros-noetic-cob-gazebo-worlds";
  version = "0.7.6-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_simulation-release/archive/release/noetic/cob_gazebo_worlds/0.7.6-1.tar.gz";
    name = "0.7.6-1.tar.gz";
    sha256 = "3cdd4b11daf900c8536a5d186f129d5269defe1d8d532fe3117dc9460880541f";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ cob-default-env-config roslaunch rostest ];
  propagatedBuildInputs = [ cob-default-env-config controller-manager gazebo-msgs gazebo-ros gazebo-ros-control joint-state-controller joint-state-publisher position-controllers robot-state-publisher rospy std-msgs tf tf2-ros velocity-controllers xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides some worlds for gazebo simulation.'';
    license = with lib.licenses; [ asl20 ];
  };
}
