
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, boost, cv-bridge, diagnostic-msgs, diagnostic-updater, geographic-msgs, geometry-msgs, geos, gps-msgs, launch-xml, libyamlcpp, marti-nav-msgs, pkg-config, proj, python3Packages, rcl-interfaces, rclcpp, rclcpp-components, rclpy, sensor-msgs, swri-math-util, swri-roscpp, tf2, tf2-geometry-msgs, tf2-py, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-swri-transform-util";
  version = "3.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/humble/swri_transform_util/3.5.0-1.tar.gz";
    name = "3.5.0-1.tar.gz";
    sha256 = "0d4bcbb07ce015b36b0b356c880ad03c235c11c6ce7e5a08bc8d8d6d182422e4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python pkg-config ];
  propagatedBuildInputs = [ boost cv-bridge diagnostic-msgs diagnostic-updater geographic-msgs geometry-msgs geos gps-msgs launch-xml libyamlcpp marti-nav-msgs proj python3Packages.numpy rcl-interfaces rclcpp rclcpp-components rclpy sensor-msgs swri-math-util swri-roscpp tf2 tf2-geometry-msgs tf2-py tf2-ros ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python pkg-config ];

  meta = {
    description = ''The swri_transform_util package contains utility functions and classes for
     transforming between coordinate frames.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
