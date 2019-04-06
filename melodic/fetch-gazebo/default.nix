
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-plugins, robot-controllers-interface, actionlib, boost, gazeboSimulator, rgbd-launch, angles, image-proc, xacro, gazebo-ros, depth-image-proc, control-msgs, trajectory-msgs, catkin, gazebo-dev, robot-controllers, fetch-description, nodelet, control-toolbox, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-fetch-gazebo";
  version = "0.9.1";

  src = fetchurl {
    url = https://github.com/fetchrobotics-gbp/fetch_gazebo-release/archive/release/melodic/fetch_gazebo/0.9.1-0.tar.gz;
    sha256 = "5b623f04b2a527ddd0a1b7407a754a3bb2e024a68f0baee2452dd364f8a95e2f";
  };

  propagatedBuildInputs = [ gazebo-ros depth-image-proc boost control-msgs control-toolbox trajectory-msgs gazeboSimulator.gazebo sensor-msgs gazebo-plugins robot-controllers-interface robot-controllers rgbd-launch actionlib fetch-description image-proc nodelet xacro ];
  nativeBuildInputs = [ gazebo-ros boost control-toolbox sensor-msgs catkin gazebo-plugins gazebo-dev robot-controllers-interface robot-controllers angles ];

  meta = {
    description = ''Gazebo package for Fetch.'';
    #license = lib.licenses.BSD;
  };
}
