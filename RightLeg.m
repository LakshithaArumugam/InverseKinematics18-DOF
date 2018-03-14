
L5R = robotics.RigidBody( 'L5R' );
Theta7 = robotics.Joint('Theta7','revolute');
Theta7.HomePosition = 0; % User defined
rotm = [ 1     0     0;0     0    -1;0     1     0];
rotm = rotm * [-0.7071   -0.7071         0; 0.7071   -0.7071         0;  0         0    1.0000]; 
tranm = [-l5; 0; 0];
tform1RL = [rotm,tranm;[0,0,0,1]] % towards minus x direction
setFixedTransform(Theta7,tform1RL);
L5R.Joint = Theta7;

L6R = robotics.RigidBody( 'L6R' );
Theta9 = robotics.Joint('Theta9','revolute');
Theta9.HomePosition = 0; % User defined
rotm = [ 0.7071    0.7071         0
   -0.7071    0.7071         0
         0         0    1.0000];
rotm = rotm * [1     0     0
     0     0     1
     0    -1     0];
rotm = rotm * [0     0    -1
     0     1     0
     1     0     0];
tranm = [0; 0; l6];
tform2RL = [rotm,tranm;[0,0,0,1]] % towards minus x direction
setFixedTransform(Theta9,tform2RL);
L6R.Joint = Theta9;

L7R = robotics.RigidBody( 'L7R' );
Theta11 = robotics.Joint('Theta11','revolute');
Theta11.HomePosition = 0; % User defined
rotm = [1     0     0
     0     0     1
     0    -1     0];
rotm = rotm * [0     0    -1
     0     1     0
     1     0     0];
tranm = [0; 0; 0];
tform3RL = [rotm,tranm;[0,0,0,1]] % towards minus x direction
setFixedTransform(Theta11,tform3RL);
L7R.Joint = Theta11;

L8R = robotics.RigidBody( 'L8R' );
Theta13 = robotics.Joint('Theta13','revolute');
Theta13.HomePosition = 0; % User defined
rotm = [-1     0     0
     0    -1     0
     0     0     1];
tranm = [-l7; 0; 0];
tform4RL = [rotm,tranm;[0,0,0,1]] % towards minus x direction
setFixedTransform(Theta13,tform4RL);
L8R.Joint = Theta13;

L9R = robotics.RigidBody( 'L9R' );
Theta15 = robotics.Joint('Theta15','revolute');
Theta15.HomePosition = 0; % User defined
rotm = [1     0     0
     0     1     0
     0     0     1];
tranm = [l7; 0; 0];
tform5RL = [rotm,tranm;[0,0,0,1]] % towards minus x direction
setFixedTransform(Theta15,tform5RL);
L9R.Joint = Theta15;

L10R = robotics.RigidBody( 'L10R' );
Theta17 = robotics.Joint('Theta17','revolute');
Theta17.HomePosition = 0; % User defined
rotm = [1     0     0
     0     0     1
     0    -1     0];
rotm = rotm * [0     0     1
     0     1     0
    -1     0     0];
tranm = [0; 0; 0];
tform6RL = [rotm,tranm;[0,0,0,1]] % towards minus x direction
setFixedTransform(Theta17,tform6RL);
L10R.Joint = Theta17;