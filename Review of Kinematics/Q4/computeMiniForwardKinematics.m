function [endeff] = computeMiniForwardKinematics(rads1,rads2)
alpha = pi + ((rads1 + rads2)/2);
beta = (rads1 - rads2)/2 ; 
a = sqrt(4 - (sin(beta)*sin(beta)));
r = a - cos(beta);
x = r*cos(alpha);
y = r*sin(alpha);
endeff = [x,y];