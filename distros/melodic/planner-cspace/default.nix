
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, costmap-cspace, costmap-cspace-msgs, diagnostic-updater, geometry-msgs, map-server, move-base-msgs, nav-msgs, neonavigation-common, planner-cspace-msgs, roscpp, roslint, rostest, sensor-msgs, std-srvs, tf2, tf2-geometry-msgs, tf2-ros, trajectory-msgs, trajectory-tracker, trajectory-tracker-msgs }:
buildRosPackage {
  pname = "ros-melodic-planner-cspace";
  version = "0.11.7-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation-release/archive/release/melodic/planner_cspace/0.11.7-1.tar.gz";
    name = "0.11.7-1.tar.gz";
    sha256 = "4205e3b004fac5a4307d30285ccdaba929f3371871d13404882a94db2f9a4902";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ map-server roslint rostest trajectory-tracker ];
  propagatedBuildInputs = [ actionlib costmap-cspace costmap-cspace-msgs diagnostic-updater geometry-msgs move-base-msgs nav-msgs neonavigation-common planner-cspace-msgs roscpp sensor-msgs std-srvs tf2 tf2-geometry-msgs tf2-ros trajectory-msgs trajectory-tracker-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''3-dof configuration space planner for mobile robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
