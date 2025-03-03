
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, launch-testing, python3Packages, rcl-logging-interface, rcutils }:
buildRosPackage {
  pname = "ros-rolling-rcl-logging-noop";
  version = "2.4.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_logging-release/archive/release/rolling/rcl_logging_noop/2.4.3-1.tar.gz";
    name = "2.4.3-1.tar.gz";
    sha256 = "9ae991e2cb2bee25366e923fa56a6a754abfb06debf2e50a75975423625d0322";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros python3Packages.empy ];
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest ament-lint-auto ament-lint-common launch-testing ];
  propagatedBuildInputs = [ rcl-logging-interface rcutils ];
  nativeBuildInputs = [ ament-cmake-ros python3Packages.empy ];

  meta = {
    description = ''An rcl logger implementation that doesn't do anything with log messages.'';
    license = with lib.licenses; [ asl20 ];
  };
}
