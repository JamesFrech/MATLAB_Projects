%% Task 1

syms x y;
diff((x*sin(x^2*y))/y^2,y)

%% Task 2

diff(diff((x^3-y^2)/(x*y),y),x)

%% Task 3

diff(diff(x^2*y+x*sin(x*y^2),x),x)

%% Task 4

jacobian((x*y)/x^2*y+y,[x y])

%% Task 5

subs(jacobian((5*x^3*y^2+x^2/y),[x y]),{x,y},{1.5,2.2})

%% Task 6

a=[3 7];
dot((a/norm(a)),subs(jacobian(x^2*y^3+x,[x y]),{x,y},{3,2}))

%% Task 7

f(x,y)=((y-2)*log(x*y));
[xsoln,ysoln]=solve(jacobian(f,[x y]))

%% Task 8

f(x,y)=x^3+y^3-6*x*y;
[xsoln,ysoln]=solve(jacobian(f,[x y]))

%% Task 9

clear all;
syms x y L;
f(x,y)=x*y^2;
g(x,y)=x^2+y^2-16;
firstpart=jacobian(f,[x y])-L*jacobian(g,[x y]);
[Lsoln,xsoln,ysoln]=solve([firstpart,g])
subs(f(x,y),{x,y},{xsoln,ysoln})

%% Task 10

clear all;
syms x y z L;
f(x,y,z)=x*y+y*z;
g(x,y,z)=x^2+y^2+z^2-8;
firstpart=jacobian(f,[x y z])-L*jacobian(g,[x y z]);
[Lsoln,xsoln,ysoln,zsoln]=solve([firstpart,g])
subs(f(x,y,z),{x,y,z},{xsoln,ysoln,zsoln})
