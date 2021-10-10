%% Task 1

syms y(t)
%% Task 2

dsolve(diff(y,1) == t^2+sin(t))
%% Task 3

dsolve(diff(y,1)-2*t*y == t,y(-1) == 2)
%% Task 4

dsolve((y+exp(y))*diff(y,1) == 1/t)
%% Task 5

dsolve((1+(1/y^2))*diff(y,1) == t)
%% Task 6

dsolve(diff(diff(y,1)+1 == 0))
%% Task 7

dsolve(diff(y,1)+2*t*y == t)
%% Task 8

clear all
syms y(t)
fplot(dsolve(diff(y,1) == y*(y-6),y(0)==1))

%% Task 9

figure;hold on;
for v=(-3:7)
fplot(dsolve(diff(y,1) == 0.1*y*(4-y),y(0)==v),[-1,3])
end
hold off
%% Task 10

clear all
syms y t
fimplicit(y^3+3*y == 3*sin(t)+4)

%% Task 11

clear all
syms y t
figure;hold on;
for C=(-10:10)
fimplicit(y^3+3*y == 3*sin(t)+3*C)
end
hold off;

%% Task 12

clear all
syms f(t,y)
f(t,y)=(1-y)*sin(t);
[T,Y] = meshgrid(-10:0.5:10,-10:0.5:10);
S = f(T,Y);
L = sqrt(1+S.^2);
quiver(T,Y,1./L,S./L,0.35)

%% Task 13
% See task 12.

%% Task 14

syms f(t,y)
f(t,y) = (t^2+y)/y
t=3;y=-1;h=0.1;n=20;
for s=1:n
y=vpa(y+h*f(t,y));
t=t+h;
end
y
%% Task 15

syms f(t,y)
f(t,y) = (t^2+y)/y
t=3;y=-1;h=0.1;n=20;
for s=1:n
y=vpa(y+h*f(t+0.5*h,y+0.5*h*f(t,y)));
t=t+h;
end
y
