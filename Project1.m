%% Task 1

syms x
solve(x^3-3*x^2-x==0)

%% Task 2
subs((1/x)+exp(x)+x^2,3)

%% Task 3
fplot(sin(x)+exp(-x))

%% Task 4
fplot(x^2-x*cos(x),[-2*pi,2*pi])

%% Task 5
subs(diff(x^2/(x+1)),x,-2)

%% Task 6
int(x^2*log(x)+x*tan(x))

%% Task 7
int(x^2*exp(2*x + 1),0,1)

%% Task 8
syms t
fplot((t/10)*cos(t),(t/5)*cos(t),[0,4*pi])

%% Task 9
r=[t^3,-exp(t),1]
diff(r)
int(r,0,2)

%% Task 10
a=[2,3,10];
b=[7,0,-2];
(dot(a,b)/(norm(b))^2)*b

%% Task 11
clear all
P=[2,-1,3];
Q=[0,7,9];
R=[4,-9,-3];
S=[7,-6,-6];
dot((Q-P),(S-R))

%% Task 12
clear all
P=[1,-2,3];
Q=[2,-1,3];
n=[2,2,3];
dot(n,(Q-P))

%% Task 13
clear all
P=[5,0,2];
Q=[1,1,1];
R=[0,1,-2];
S=[1,-2,-1];
dot((S-P),cross((Q-P),(R-P)))/norm(cross((Q-P),(R-P)))

%% Task 14
clear all
syms t;
assume(t,'real');
r = [cos(t),cos(t),sqrt(2)*sin(t)]
v=diff(r);
T=simplify(v/norm(v))
N=simplify(diff(T)/norm(diff(T)))

%% Task 15
view([10,10,10]);
plot3(1,2,3,'o',2,-3,0,'o',-3,5,1,'o')

%% Task 16
fplot3(3*cos(t),1/t,2*sin(t),[0.1,2*pi])

%% Task 17
fplot3(t,t,(9-t^2),[-3,3])

%% Task 18
quiver3(-1,4,2,2,-3,-1);
view([10,10,10]);
daspect([1 1 1])

%% Task 19
figure
points = [8 0 0;0 16 0;0 0 4];
patch(points(1,:),points(2,:),points(3,:),[0.95 0.95 0.95]);
view([10 10 10])

%% Task 20
figure
points = [0 4 0;0 0 3;10 4 0; 10 0 3];
patch(points(:,1),points(:,2),points(:,3),[0.95 0.95 0.95]);
view([10 10 10])