%% Math246H Matlab Project 3
%
% Author: James Frech
%%
%% Task 1
A = [1 2 -3;0 4 4;-2 5 1];
B = [-4 0 1;2 2 -2;7 -5 2];
A*B
B*A
%% Task 2
% syms was giving me errors, so I didn't use it.
A = [2 -5;1 -2]
[evect,eval] = eig(A)
%% Task 3
% syms was giving me errors, so I didn't use it.
A = [-1 -1 0;5 -3 0;0 0 2]
[evect,eval] = eig(A)
%% Task 4
syms x(t) y(t)
[xsoln,ysoln] = dsolve(diff(x) == 3*x-y,diff(y) == 4*x-2*y)
%% Task 5
syms x(t) y(t)
[xsoln,ysoln] = dsolve(diff(x) == 3*x-y,diff(y) == 4*x-2*y,x(0)==2,y(0)==-3)
%% Task 6
syms x(t) y(t)
X=[x;y];
A=[2 -5;-1 2];
[xsoln,ysoln] = dsolve(diff(X) == A*X)
%% Task 7
f = @(t,x) [4*x(2)-x(2)^3;x(1)];
[t,xsoln] = ode45(f,[0 2*pi],[0 1]);
plot(xsoln(:,1),xsoln(:,2))
axis equal
%% Task 8
f = @(t,x) [2-x(2);4-x(1)^2];
[t,xsoln] = ode45(f,[0 4],[0,6]);
plot(xsoln(:,1),xsoln(:,2))
axis equal