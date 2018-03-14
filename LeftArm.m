% Right Arm

L0L = robotics.RigidBody('L0L');
tformL = trvec2tform([0, 0, 0]);

L1L = robotics.RigidBody( 'L1L' );
Theta2 = robotics.Joint('Theta2','revolute');
Theta2.HomePosition = 0; % User defined
rotm = [ 0     0     1
     0     1     0
    -1     0     0];
rotm = rotm * [-1     0     0
     0    -1     0
     0     0     1]; 
tranm = [l0; 0; 0];
tform1L = [rotm,tranm;[0,0,0,1]] % towards minus x direction
setFixedTransform(Theta2,tform1L);
L1L.Joint = Theta2;

L2L = robotics.RigidBody( 'L2L' );
Theta4 = robotics.Joint('Theta4','revolute');
Theta4.HomePosition = 0; 
rotm = [-1     0     0
     0    -1     0
     0     0     1];
rotm = rotm * [0     0    -1
     0     1     0
     1     0     0]; 
tranm = [l1; l2; 0];
tform2L = [rotm,tranm;[0,0,0,1]] % towards minus x direction
setFixedTransform(Theta4,tform2L);
L2L.Joint = Theta4;


L3L = robotics.RigidBody( 'L3L' );
Theta6 = robotics.Joint('Theta6','revolute');
Theta6.HomePosition = 0; 
rotm = [ 1     0     0
     0     1     0
     0     0     1];
tranm = [0; -l3; 0];
tform3L = [rotm,tranm;[0,0,0,1]] % towards minus x direction
setFixedTransform(Theta6,tform3L);
L3L.Joint = Theta6;

LH = robotics.RigidBody('LH');
rotm = [ 1     0     0
     0     1     0
     0     0     1];
tranm = [0; -l4; 0];
tform4L = [rotm,tranm;[0,0,0,1]] % towards minus x direction
setFixedTransform(LH.Joint,tform4L);