% Right Arm
L0 = robotics.RigidBody('L0');
tform = trvec2tform([0, 0, 0]);

%Link 1
L1 = robotics.RigidBody( 'L1' );
%Defining theta1 which is joint between L0 and L1
Theta1 = robotics.Joint('Theta1','revolute');
%Initial position of angle is 0
Theta1.HomePosition = 0; % User defined
%Rotation about y-axis for -90 degrees
rotm = [0     0    -1
        0     1     0
        1     0     0];
%Translation towards minus x-axis of value l0
tranm = [-l0; 0; 0];
%Complete homogeneous matrix
tform1 = [rotm,tranm;[0,0,0,1]] % towards minus x direction
setFixedTransform(Theta1,tform1);
%Connection L1 with joint named theta1
L1.Joint = Theta1;

%Link 2
L2 = robotics.RigidBody( 'L2' );
% Theta 3 angle
Theta3 = robotics.Joint('Theta3','revolute');
Theta3.HomePosition = 0; 
%Rotation around y-axsis of 90 degrees
rotm = [0     0     1
        0     1     0
        -1     0     0];
tranm = [-l1; -l2; 0];
tform2 = [rotm,tranm;[0,0,0,1]] % towards minus x direction
setFixedTransform(Theta3,tform2);
L2.Joint = Theta3;


L3 = robotics.RigidBody( 'L3' );
Theta5 = robotics.Joint('Theta5','revolute');
Theta5.HomePosition = 0; 
rotm = [ 1     0     0
     0     1     0
     0     0     1];
tranm = [0; -l3; 0];
tform3 = [rotm,tranm;[0,0,0,1]] % towards minus x direction
setFixedTransform(Theta5,tform3);
L3.Joint = Theta5;

RH = robotics.RigidBody('RH');
rotm = [ 1     0     0
     0     1     0
     0     0     1];
tranm = [0; -l4; 0];
tform4 = [rotm,tranm;[0,0,0,1]] % towards minus x direction
setFixedTransform(RH.Joint,tform4);
