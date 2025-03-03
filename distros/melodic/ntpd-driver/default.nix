
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, message-generation, message-runtime, poco, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-ntpd-driver";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/vooon/ntpd_driver-release/archive/release/melodic/ntpd_driver/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "ddbf892d2e11bfda0fa755a61a02868b01c5d3e05d28cf109633cf399f157de1";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cmake-modules message-generation message-runtime poco roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ntpd_driver sends TimeReference message time to ntpd server'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
