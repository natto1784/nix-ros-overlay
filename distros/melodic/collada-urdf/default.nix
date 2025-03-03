
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, assimp, catkin, cmake-modules, collada-dom, collada-parser, eigen, geometric-shapes, resource-retriever, rosconsole, urdf, urdfdom, urdfdom-headers }:
buildRosPackage {
  pname = "ros-melodic-collada-urdf";
  version = "1.12.13-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/collada_urdf-release/archive/release/melodic/collada_urdf/1.12.13-1.tar.gz";
    name = "1.12.13-1.tar.gz";
    sha256 = "f7d6164dbb2c9a92a9e9c80887c9b78b0cb9160d18273f8a4eba3c0d56eed363";
  };

  buildType = "catkin";
  buildInputs = [ angles catkin cmake-modules eigen ];
  propagatedBuildInputs = [ assimp collada-dom collada-parser geometric-shapes resource-retriever rosconsole urdf urdfdom urdfdom-headers ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a tool to convert Unified Robot Description Format (URDF) documents into COLLAborative Design Activity (COLLADA) documents.

    Implements robot-specific COLLADA extensions as defined by
    http://openrave.programmingvision.com/index.php/Started:COLLADA'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
