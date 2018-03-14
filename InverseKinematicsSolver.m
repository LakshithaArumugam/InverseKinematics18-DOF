
run('boiloidSimulation.m');

randConfig = boiloid.randomConfiguration
%Get forward transformation from Torso to Right Hand
tformRH = getTransform(boiloid,randConfig,'RH','base')
show(boiloid,randConfig);

%Creating an InverseKinematics object for the Boiloid model. 
%Using this object to calculate a solution for the given goal. 
%Specify weights for the different components of the pose. 
%Use a lower magnitude weight for the orientation angles than the position 
%components. Use the home configuration of the robot as an initial guess.
ik = robotics.InverseKinematics('RigidBodyTree',boiloid);
weights = [0.25 0.25 0.25 1 1 1];
initialguess = boiloid.homeConfiguration;

%[configSoln, solnInfo] = ik('RH',tformRH,weights,initialguess);
[configSoln, solnInfo] = step(ik, 'RH', tformRH, weights,initialguess );
show(boiloid,configSoln);