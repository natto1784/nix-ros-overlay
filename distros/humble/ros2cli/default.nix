
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python3Packages, pythonPackages, rclpy, test-msgs }:
buildRosPackage {
  pname = "ros-humble-ros2cli";
  version = "0.18.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/humble/ros2cli/0.18.4-1.tar.gz";
    name = "0.18.4-1.tar.gz";
    sha256 = "7da758be498ee7288d461edcfeb77d8f62075b2450a8b903649419a4d585c762";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest-timeout pythonPackages.pytest test-msgs ];
  propagatedBuildInputs = [ python3Packages.argcomplete python3Packages.importlib-metadata python3Packages.netifaces python3Packages.packaging python3Packages.setuptools rclpy ];

  meta = {
    description = ''Framework for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
