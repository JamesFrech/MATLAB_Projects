%% Task 1

syms x y z;
int(int(int(x*y,z,0,9-x^2),y,0,x),x,0,2)

%% Task 2

syms r theta;
int(int(int(z*r,z,0,10-r),r,0,sin(theta)),theta,0,pi/2)

%% Task 3

clear all;
syms x y z;
rbar = [x,y,sqrt(9-4*x^2)];
fsurf(rbar(1),rbar(2),rbar(3),[0,10,1,2])
view([10 10 10])
axis equal

%% Task 4

clear all;
syms x y;
rbar = [x,y,(8-x-2*y)];
fsurf(rbar(1),rbar(2),rbar(3),[0,1,-1,1])
view([10 10 10])
axis equal

%% Task 5

[x,y] = meshgrid(-5:1:5,-5:1:5)
quiver(x,y,0.2*(2*x+y),0.2*(x-2*y),0)

%% Task 6

clear all;
syms t x y z;
rbar = [cos(t),sin(t),0];
f = x*2+y^4;
mylength = @(u) sqrt(u*transpose(u));
mag = simplify(mylength(diff(rbar,t)));
sub = subs(f,[x,y,z],rbar);
int(sub*mag,t,0,2*pi)

%% Task 7

syms t x y z;
rbar = [3*t,1+t,1+t];
f = x-3*y;
mylength = @(u) sqrt(u*transpose(u));
mag = simplify(mylength(diff(rbar,t)));
sub = subs(f,[x,y,z],rbar);
int(sub^mag,t,0,1)

%% Task 8

clear all;
syms t x y z;
rbar = [x,2*cos(t),2*sin(t)];
F = [x*z,x*y*z,x*y];
sub = subs(F,[x,y,z],rbar);
int(dot(sub,diff(rbar,t)),0,pi)

%% Task 9

clear all;
syms x y z;
rbar = [x,y,16-2*x-y];
f = x+y^2;
mylength = @(u) sqrt(u*transpose(u));
mag = simplify(mylength(cross(diff(rbar,x),diff(rbar,y))));
subresult = subs(f,[x,y,x],rbar);
int(int(subresult*mag,x,-sqrt(2),sqrt(2)),y,-sqrt(2),sqrt(2))

%% Task 10

clear all;
syms t x y z;
rbar = [x,y,x^2+y^2];
F = [y,-x,z];
kross = simplify(cross(diff(rbar,t),diff(rbar,y)));
sub = subs(F,[x,y,z],rbar);
int(int(dot(sub,kross),y,0,2),x,0,3)