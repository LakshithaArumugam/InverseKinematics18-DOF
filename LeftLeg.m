L5L = robotics.RigidBody( 'L5L' );
Theta8 = robotics.Joint('Theta8','revolute');
Theta8.HomePosition = 0; % User defined
rotm = [1     0     0
     0     0    -1
     0     1     0];
rotm = rotm * [ 0.7071   -0.7071         0
    0.7071    0.7071         0
         0         0    1.0000
]; 
tranm = [l5; 0; 0];
tform1LL = [rotm,tranm;[0,0,0,1]] % towards minus x direction
setFixedTransform(Theta8,tform1LL);
L5L.Joint = Theta8;

L6L = robotics.RigidBody( 'L6L' );
Theta10 = robotics.Joint('Theta10','revolute');
Theta10.HomePosition = 0; % User defined
rotm = [0.7071    0.7071         0
   -0.7071    0.7071         0
         0         0    1.0000];
rotm = rotm * [1     0     0
     0     0     1
     0    -1     0];
rotm = rotm * [ 0     0    -1
     0     1     0
     1     0     0];
tranm = [0; 0; l6];
tform2LL = [rotm,tranm;[0,0,0,1]] % towards minus x direction
setFixedTransform(Theta10,tform2LL);
L6L.Joint = Theta10;
% 
L7L = robotics.RigidBody( 'L7L' );
Theta12 = robotics.Joint('Theta12','revolute');
Theta12.HomePosition = 0; % User defined
rotm = [1     0     0
     0     0     1
     0    -1     0];
rotm = rotm * [0     0    -1
     0     1     0
     1     0     0];
tranm = [0; 0; 0];
tform3LL = [rotm,tranm;[0,0,0,1]] % towards minus x direction
setFixedTransform(Theta12,tform3LL);
L7L.Joint = Theta12;
% 
L8L = robotics.RigidBody( 'L8L' );
Theta14 = robotics.Joint('Theta14','revolute');
Theta14.HomePosition = 0; % User defined
rotm = [1     0     0
     0     1     0
     0     0     1];
tranm = [-l7; 0; 0];
tform4LL = [rotm,tranm;[0,0,0,1]] % towards minus x direction
setFixedTransform(Theta14,tform4LL);
L8L.Joint = Theta14;
% 
L9L = robotics.RigidBody( 'L9L' );
Theta16 = robotics.Joint('Theta16','revolute');
Theta16.HomePosition = 0; % User defined
rotm = [1     0     0
     0     1     0
     0     0     1];
tranm = [-l7; 0; 0];
tform5LL = [rotm,tranm;[0,0,0,1]] % towards minus x direction
setFixedTransform(Theta16,tform5LL);
L9L.Joint = Theta16;
% 
L10L = robotics.RigidBody( 'L10L' );
Theta18 = robotics.Joint('Theta18','revolute');
Theta18.HomePosition = 0; % User defined
rotm = [ 1     0     0
     0     0     1
     0    -1     0];
rotm = rotm * [0     0     1
     0     1     0
    -1     0     0];
tranm = [0; 0; 0];
tform6LL = [rotm,tranm;[0,0,0,1]] % towards minus x direction
setFixedTransform(Theta18,tform6LL);
L10L.Joint = Theta18;