%% Math 240 Matlab Project 2
% Spring 2020
%
% Section [0223]
%
% Author: [James Frech]
%
% Group members: [Me]
%
% 
%
% *
%%
%% Problem 1
% (a)
format short;
A=[cos(pi/9) -sin(pi/9);sin(pi/9) cos(pi/9)]
v=[5 ; -5]
A*v
%%
% (b)
A=[cos(pi/9) -sin(pi/9);sin(pi/9) cos(pi/9)];
B=[cos(pi/11) -sin(pi/11);sin(pi/11) cos(pi/11)];
A*B
B*A
%%
% (c)
% They share a commutative property. They give the same result regardless
% of which comes before which.
%%
% (d)
A=[cos(pi/9) -sin(pi/9);sin(pi/9) cos(pi/9)];
B=[cos(pi/11) -sin(pi/11);sin(pi/11) cos(pi/11)];
C = A*B;
format rat
t = acos(C(1,1))
t/pi
%%
% (e)
format short
A=[cos(pi/9) -sin(pi/9);sin(pi/9) cos(pi/9)];
B=[cos(-pi/9) -sin(-pi/9);sin(-pi/9) cos(-pi/9)]
inv(A)
%%
% (f)
A=[cos(pi/9) -sin(pi/9);sin(pi/9) cos(pi/9)];
B=[cos(-pi/9) -sin(-pi/9);sin(-pi/9) cos(-pi/9)];
C=[1 0;0 -1];
D=A*B*C
%%
% (g)
% They are not equal.
A=[cos(pi/9) -sin(pi/9);sin(pi/9) cos(pi/9)];
C=[1 0;0 -1];
A*C
C*A
%%
% (h)
E = A*C
t = acos(E(1,1))
format rat
t/pi
%% Problem 2
% (a)
% A^-1 = [11/90 -17/30 26/45;-1/6 1/2 -1/3;13/90 -1/30 -2/45]
format rat
A=[3 4 9;5 8 5;6 7 3];
M = [A eye(3)]
rref(M)
%%
% (b)
A=[3 4 9;5 8 5;6 7 3];
inv(A)
%% Problem 3
% (a)
A=[5 0 0 0;13 2 0 0;-6 4 -1 0;10 0 3 -2];
det(A)
B=[-1 -1 1 1;2 0 1 3;2 -1 1 2;1 0 3 3];
det(B)
%%
% (b)
% You can go down any column or across any row to calculate the
% determinant.
% Since the whole last column is 0's except for the final entry -2, you can
% go down that column and only have one 3x3 matrix that isn't equal to 0.
%%
% (c)
A=[5 0 0 0;13 2 0 0;-6 4 -1 0;10 0 3 -2];
B=[-1 -1 1 1;2 0 1 3;2 -1 1 2;1 0 3 3];
C=A*B
det(C)
%%
% (d)
% Since C=A*B, then det(C)=det(A)*det(B), which was already caluclated to
% be 20 and 13 respectively. 20*13=260.
%% Problem 4
% (a)
format rat
A=[-1 3 8 -2;1 -3 -2 0;0 0 -4 -1;2 -8 -1 7];
det(A)
%%
% (b)
% det(B)=-det(A) = 28
% det(C)=5det(A) = -140
% det(D)=det(A) = -28
%%
% (c)
B = A;
B([2 4],:)=B([4 2],:)
C = A;
C(2,:)=5*C(2,:)
D = A;
D(1,:)=D(1,:)+6*D(4,:)

%%
% (d)
det(B)
det(C)
det(D)
%% Problem 5
% (a)
syms a b c d
A=[a b;c d]
%%
% (b)
inv(A)
%%
% (c)
syms e f g h i
B=[a b c;d e f;g h i]
inv(B)
%%
% (d)
inv(B)*det(B)