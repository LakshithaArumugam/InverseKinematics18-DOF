clear all
clc
close all
%
%
run('Parameters.m'); %Load Parameters
run('RightArm.m');
run('LeftArm.m');
run('Body.m');
run('RightLeg.m');
run('LeftLeg.m');
%============================================================
boiloid = robotics.RigidBodyTree;

addBody(boiloid,L0,'base');
addBody(boiloid,L1,'L0');
addBody(boiloid,L2,'L1');
addBody(boiloid,L3,'L2');
addBody(boiloid,RH,'L3');
% 
addBody(boiloid,L0L,'base');
addBody(boiloid,L1L,'L0L');
addBody(boiloid,L2L,'L1L');
addBody(boiloid,L3L,'L2L');
addBody(boiloid,LH,'L3L');
% % 
addBody(boiloid,Belly,'base');
% 
%Right Leg
addBody(boiloid,L5R,'Belly');
addBody(boiloid,L6R,'L5R');
addBody(boiloid,L7R,'L6R');
addBody(boiloid,L8R,'L7R');
addBody(boiloid,L9R,'L8R');
addBody(boiloid,L10R,'L9R');

%Left Leg
addBody(boiloid,L5L,'Belly');
addBody(boiloid,L6L,'L5L');
addBody(boiloid,L7L,'L6L');
addBody(boiloid,L8L,'L7L');
addBody(boiloid,L9L,'L8L');
addBody(boiloid,L10L,'L9L');
% 
% 
% %showdetails(boiloid)
show(boiloid)
