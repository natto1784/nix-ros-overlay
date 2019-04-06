
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, xpp-states, xpp-quadrotor, xpp-msgs, xpp-hyq, catkin, xpp-vis, xpp-examples }:
buildRosPackage {
  pname = "ros-melodic-xpp";
  version = "1.0.10";

  src = fetchurl {
    url = https://github.com/leggedrobotics/xpp-release/archive/release/melodic/xpp/1.0.10-0.tar.gz;
    sha256 = "b5df600ccf29b0c24148d6eac7312ddd566f19024c48a49779a9f6905cef89ee";
  };

  propagatedBuildInputs = [ xpp-states xpp-msgs xpp-quadrotor xpp-hyq xpp-examples xpp-vis ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Visualization of motion-plans for legged robots. It draws support areas, 
    contact forces and motion trajectories in RVIZ and displays URDFs for 
    specific robots, including a one-legged, a two-legged hopper and
    <a href="http://dls.iit.it/">HyQ</a>. 
    Example motions were generated by
    <a href="https://github.com/ethz-adrl/towr">towr</a>.'';
    #license = lib.licenses.BSD;
  };
}
