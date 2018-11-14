close all; clear variables; clc
% Create a bag file object with the file name
% by omitting the semicolon this displays some information about
% the bag file
bag = rosbag('../data/myturtle.bag')
 
% Display a list of the topics and message types in the bag file
bag.AvailableTopics
 
% Since the messages on topic turtle1/pose are of type Twist,
% let's see some of the attributes of the Twist message
msg_pose = rosmessage('turtlesim/Pose')
showdetails(msg_pose)
 
% Get just the topic we are interested in
bagselect = select(bag,'Topic','turtle1/pose');
 
% Create a time series object based on the fields of the turtlesim/Pose
% message we are interested in
ts = timeseries(bagselect,'X','Y','Theta','LinearVelocity','AngularVelocity');

x = ts.Data(:,1);
y = ts.Data(:,2);
th = ts.Data(:,3);
vel = ts.Data(:,4);
time = ts.Time-ts.Time(1);
figure; plot(x,y);xlabel('x'); ylabel('y'); title('y vs x')
figure; plot(time, th); xlabel('time'); ylabel('theta'); 
title('theta vs time')

% x is the x position of the turtle
% y is the y position of the turtle
% vel is the LinearVelocity of the turtle
% th is the heading angle of the turtle in radians
 
u = vel.*cos(th);
v = vel.*sin(th);
ii = 1:10:length(x);  % Decimate the data so that it plot only every Nth point.
figure; quiver(x(ii),y(ii),u(ii),v(ii))
xlabel('x'); ylabel('y'); title('Quiver Plot of turtle1/pose')