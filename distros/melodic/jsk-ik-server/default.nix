
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, mk, moveit-msgs, roseus, rostest, tf }:
buildRosPackage {
  pname = "ros-melodic-jsk-ik-server";
  version = "0.1.16-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_control-release/archive/release/melodic/jsk_ik_server/0.1.16-1.tar.gz";
    name = "0.1.16-1.tar.gz";
    sha256 = "9db6bcdbf9dac42d1442ddae80b22d02832be8f96570f8170b171c5e984c4c92";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cmake-modules mk moveit-msgs roseus rostest tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''jsk_ik_server'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
