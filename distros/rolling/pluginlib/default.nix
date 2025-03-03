
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, class-loader, rcpputils, rcutils, tinyxml2-vendor }:
buildRosPackage {
  pname = "ros-rolling-pluginlib";
  version = "5.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pluginlib-release/archive/release/rolling/pluginlib/5.2.1-1.tar.gz";
    name = "5.2.1-1.tar.gz";
    sha256 = "e716b282ce049be7f68da54f9abb771c44903d2917128567fe565b86810adf56";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ ament-index-cpp class-loader rcpputils rcutils tinyxml2-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The pluginlib package provides tools for writing and dynamically loading plugins using the ROS build infrastructure.
    To work, these tools require plugin providers to register their plugins in the package.xml of their package.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
