
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, boost, catkin, cob-base-controller-utils, controller-interface, geometry-msgs, hardware-interface, nav-msgs, pluginlib, realtime-tools, roscpp, std-srvs, tf }:
buildRosPackage {
  pname = "ros-noetic-cob-tricycle-controller";
  version = "0.8.20-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_control-release/archive/release/noetic/cob_tricycle_controller/0.8.20-1.tar.gz";
    name = "0.8.20-1.tar.gz";
    sha256 = "16ea625858fc6c755a5833ea9b7f52cc30110584a162672c58bf27ed4d15176e";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ angles boost cob-base-controller-utils controller-interface geometry-msgs hardware-interface nav-msgs pluginlib realtime-tools roscpp std-srvs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_omni_drive_controller package provides a ros_controller plugin for the Care-O-bot tricycle base platform.'';
    license = with lib.licenses; [ asl20 ];
  };
}
