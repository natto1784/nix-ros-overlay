
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, uncrustify-vendor }:
buildRosPackage {
  pname = "ros-galactic-ament-uncrustify";
  version = "0.10.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/galactic/ament_uncrustify/0.10.7-1.tar.gz";
    name = "0.10.7-1.tar.gz";
    sha256 = "77bf7841dca0533fe0005a51a197eeac712a508eb0c0f48aedffe27bf0626592";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ uncrustify-vendor ];

  meta = {
    description = ''The ability to check code against style conventions using uncrustify
    and generate xUnit test result files.'';
    license = with lib.licenses; [ asl20 ];
  };
}
