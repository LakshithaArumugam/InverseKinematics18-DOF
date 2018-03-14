
Belly = robotics.RigidBody('Belly');
tformB = trvec2tform([0, -l4-l3-l2-l2, 0]);
setFixedTransform(Belly.Joint,tformB);
