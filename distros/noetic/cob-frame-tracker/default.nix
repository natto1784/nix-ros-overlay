
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, boost, catkin, cob-srvs, control-toolbox, dynamic-reconfigure, geometry-msgs, interactive-markers, kdl-conversions, kdl-parser, message-generation, message-runtime, orocos-kdl, roscpp, roslint, rospy, sensor-msgs, std-msgs, std-srvs, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-cob-frame-tracker";
  version = "0.8.20-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_control-release/archive/release/noetic/cob_frame_tracker/0.8.20-1.tar.gz";
    name = "0.8.20-1.tar.gz";
    sha256 = "3b34c54bf48dfab2c12e6cfc46395fe30b6cb62071d1bb3afe0188eca2c69b38";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ actionlib actionlib-msgs boost cob-srvs control-toolbox dynamic-reconfigure geometry-msgs interactive-markers kdl-conversions kdl-parser message-runtime orocos-kdl roscpp roslint rospy sensor-msgs std-msgs std-srvs tf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_frame_tracker package contains nodes that publish Twist commands based on the distance to the desired tf frame target.'';
    license = with lib.licenses; [ asl20 ];
  };
}
