
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pr2-dashboard-aggregator, pr2-description, pr2-machine, pr2-msgs }:
buildRosPackage {
  pname = "ros-melodic-pr2-common";
  version = "1.13.1-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_common-release/archive/release/melodic/pr2_common/1.13.1-1.tar.gz";
    name = "1.13.1-1.tar.gz";
    sha256 = "6edfb18191b7e0dfa2515d3cb3ee27c25d7199617beedc923494a7fd2e95bc89";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ pr2-dashboard-aggregator pr2-description pr2-machine pr2-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF description of the robot kinematics and dynamics, 3D models of robot components, information required for gazebo to simulate the PR2, and messages specific to the PR2 such as detailed information about its power board and fingertip pressure sensors.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
