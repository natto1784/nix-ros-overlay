
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-index-cpp, ament-lint-auto, ament-lint-common, pluginlib, rclcpp, rcpputils, rcutils, rmw, rmw-implementation, rosbag2-storage, rosbag2-storage-default-plugins, rosbag2-test-common, rosidl-runtime-c, rosidl-runtime-cpp, rosidl-typesupport-cpp, rosidl-typesupport-introspection-cpp, shared-queues-vendor, test-msgs }:
buildRosPackage {
  pname = "ros-humble-rosbag2-cpp";
  version = "0.15.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/humble/rosbag2_cpp/0.15.3-1.tar.gz";
    name = "0.15.3-1.tar.gz";
    sha256 = "aedebc33eabe86405ee03416bfadb48e6aa2d944f7a2c01ae65bb5e52e240cd5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock ament-lint-auto ament-lint-common rosbag2-test-common test-msgs ];
  propagatedBuildInputs = [ ament-index-cpp pluginlib rclcpp rcpputils rcutils rmw rmw-implementation rosbag2-storage rosbag2-storage-default-plugins rosidl-runtime-c rosidl-runtime-cpp rosidl-typesupport-cpp rosidl-typesupport-introspection-cpp shared-queues-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''C++ ROSBag2 client library'';
    license = with lib.licenses; [ asl20 ];
  };
}
