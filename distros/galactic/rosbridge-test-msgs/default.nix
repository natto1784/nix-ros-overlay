
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, ament-cmake, ament-cmake-pytest, builtin-interfaces, diagnostic-msgs, example-interfaces, geometry-msgs, nav-msgs, rclpy, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs, std-srvs, stereo-msgs, tf2-msgs, trajectory-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-galactic-rosbridge-test-msgs";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbridge_suite-release/archive/release/galactic/rosbridge_test_msgs/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "5f37c4072957a747eec70374ad84fd3f419b5d9ceb921fca04974c1bacc6aab5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ actionlib-msgs ament-cmake-pytest builtin-interfaces diagnostic-msgs example-interfaces geometry-msgs nav-msgs sensor-msgs std-msgs std-srvs stereo-msgs tf2-msgs trajectory-msgs visualization-msgs ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rclpy rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Message and service definitions used in internal tests for rosbridge packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
