
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-index-python, python-qt-binding, qt-dotgraph, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-galactic-rqt-graph";
  version = "1.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_graph-release/archive/release/galactic/rqt_graph/1.2.2-1.tar.gz";
    name = "1.2.2-1.tar.gz";
    sha256 = "717ecd9886c8678b41a0ed3d242a95ef2c077fdb40456220f1702d171b2218dd";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ ament-index-python python-qt-binding qt-dotgraph rqt-gui rqt-gui-py ];

  meta = {
    description = ''rqt_graph provides a GUI plugin for visualizing the ROS
      computation graph.<br/>
      Its components are made generic so that other packages
      where you want to achieve graph representation can depend upon this pkg
      (use <a href="http://www.ros.org/wiki/rqt_dep">rqt_dep</a> to find out
      the pkgs that depend. rqt_dep itself depends on rqt_graph too).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
