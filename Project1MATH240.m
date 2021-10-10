%% Math 240 Matlab Project 1
% Spring 2020
%
% Section [0223]
%
% Author: [James Frech]
%
% Group members: [Me]
%%
%% Problem 1
% (a) 
A=[1 -1 1 -10; 3 -6 5 -27; -1 16 -15 43]
%%
% (b) 
A(2,:)=A(2,:)+(-3*A(1,:))
A(3,:)=A(3,:)+A(1,:)
A(3,:)=A(3,:)+(5*A(2,:))
%%
% (c)
A(2,:)=(-1/3)*A(2,:)
A(3,:)=(-1/4)*A(3,:)
A(1,:)=A(1,:)-A(3,:)
A(2,:)=A(2,:)+(2/3)*A(3,:)
A(1,:)=A(1,:)+A(2,:)
%%
% (d) 
% x1 = -7, x2 = -9, x3 = -12
%% Problem 2
% (a)
B=[1 -2 0 5 1 7; -4 5 6 -25 -1 -21; 2 -22 36 -22 26 60; -1 2 0 -11 17 5]
%%
% (b)
B(4,:)=B(4,:)+B(1,:)
B(3,:)=B(3,:)+(-2*B(1,:))
B(2,:)=B(2,:)+(4*B(1,:))
B(3,:)=B(3,:)+(-6*B(2,:))
B(4,:)=B(4,:)+(-3*B(3,:))
%%
% (c)
B(2,:)=B(2,:)+(-5/2*B(3,:))
B(1,:)=B(1,:)+(5/2*B(3,:))
B(1,:)=B(1,:)+(-2/3*B(2,:))
B(2,:)=-1/3*B(2,:)
B(3,:)=-1/2*B(3,:)
%%
% (d)
B=[1 -2 0 5 1 7; -4 5 6 -25 -1 -21; 2 -22 36 -22 26 60; -1 2 0 -11 17 5]
rref(B)
%%
% (e)
% x = [19 1 0 -2 0] + x3[4 2 1 0 0] + x5[-24 -4 0 3 1]
%% Problem 3
% (a)
format short
A=[5.2 6.2 3.7 8.8; 2.3 6.8 9.8 9.1; 4.9 4.0 0.4 7.9]
rref(A)
%%
% (b)
% x1 = 5.5297, x2 = -5.1170, x3 = 3.1813
%%
% (c)
format rat
rref(A)
%%
% (d)
% x1 = 1305/236, x2 = -875/171, x3 = 614/193
%% Problem 4
% (a)
% 270x1 + 51x2  + 70x3 = 400
% 10x1  + 5.4x2 + 15x3 = 30
% 2x1   + 5.2x2 + 0x3  = 10
format short
A=[270 51 70 400; 10 5.4 15 30; 2 5.2 0 10]
rref(A)
%%
% Mac and cheese = 0.9858 units, broccoli = 1.5439 units, chicken = 0.7870
% units.

%%
% (b)
% 260x1 + 51x2  + 70x3 = 400
% 9x1   + 5.4x2 + 15x3 = 30
% 5x1   + 5.2x2 + 0x3  = 10
A=[260 51 70 400; 9 5.4 15 30; 5 5.2 0 10]
rref(A)
%%
% Shells = 1.089 units, broccoli = 0.876 units, Chicken = 1.0313 units
%% Problem 5
% (a)
A=[45.2 21.1 48.2; 45.4 18.7 46.4; 25.8 12.4 27.8]
rref(A)
%%
% (b)
% Yes, it is in the span of the other two vectors. The rref shows all
% values in the third row turn to 0, which shows that the system is
% consistent. Therefore the third vector must be in the span of the first
% two. 
%%
% (c) 
% They are linearly dependent because there is no pivot in the third column
% of the rref and there are nontrivial solutions.
%% Problem 6
% (a)
syms a;
syms b;
%%
% (b)
A=[-9 7 a; 1 3 b]
rref(A)
%%
% (c)
% w1 = (7*b)/34 - (3*a)/34, w2 = a/34 + (9*b)/34
%% Problem 7
% (a)
A=[-1 4 5 -1 -4; 2 6 5 3 -2; 3 0 -2 4 4; 5 -2 -3 1 1]
rref(A)
%%
% (b)
% There is not a pivot in every column. x5 is a free variable.
%%
% (c)
% x1 = 0.25, x2 = 2.875, x3 = -1.875, x4 = -2.125, x5 = 1
%%
% (d)
% Theorem 8 - If a set contains more vectors than there are entries in each
% vector, then the set is linearly dependent. That is, any set {v1,...,vp}
% in Rn is linearly dependent if p > n.
%%
% (e)
% Yes they do span R4 because a set of vectors span the amount of
% dimensions as rows they have. In this case the vectors have four rows to
% them, so they span R4.