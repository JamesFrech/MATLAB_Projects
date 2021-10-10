%% Matlab Project 2
% James Frech
%%
%% Task 1
A = [3 2 8 -1 ; 0 -1 -3 5 ; 2 2 -2 7 ; 5 1 0 1];
det(A)

%% Task 2
syms b;
A = [3 b 2 ; b b 5 ; 1 -1 5]
solve(det(A)==0)

%% Task 3
syms x
factor(x^2-7*x+10)

%% Task 4
factor(x*8-18*x^6-4*x^5-51*x^4+612*x^3-216*x^2+648*x-4860,'FactorMode','Complex')

%% Task 5
syms y(t)
Dy = diff(y);
D2y = diff(y,2);
dsolve(D2y-3*Dy+10*y==0,y(0)==1,Dy(0)==17)

%% Task 6

syms y(t)
Dy = diff(y);
D2y = diff(y,2);
D3y = diff(y,3);
D4y = diff(y,4);
D5y = diff(y,5);
dsolve(D5y-9*D4y+36*D3y-108*D2y+243*Dy-243*y==0)

%% Task 7
syms y(t)
Dy = diff(y);
D2y = diff(y,2);
dsolve(D2y-Dy-2*y==cos(t))

%% Task 8
syms y(t)
Dy = diff(y);
D2y = diff(y,2);
D3y = diff(y,3);
dsolve(D3y+3*D2y-4*Dy==t+cos(t),y(0)==0,Dy(0)==1,D2y(0)==3)

%% Task 9
clear all
syms s t;
simplify(laplace(t^3*sin(2*t),t,s))

%% Task 10
clear all
syms s t;
simplify(laplace((2*t^2-t)*(cos(5*t)),t,s))

%% Task 11
syms s t;
ilaplace(1/(s-2)^3,s,t)

%% Task 12
syms s t;
ilaplace((s^2+s+1)/(s^3-5*s^2-2*s),s,t)