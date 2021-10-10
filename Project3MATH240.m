%% Math 240 Matlab Project 3
% Spring 2020
%
% Section [0223]
%
% Author: [James Frech]
%
%%
%% Problem 1
v1 = [-6 ; 4 ; -9 ; 4]
v2 = [8 ; -3 ; 7 ; -3]
v3 = [-9 ; 5 ; -8 ; 3]
x = [4 ; 7 ; -8 ; 3]
B = [v1 v2 v3]
rref(B)
A = [B x]
rref(A)
% Since B is v1, v2, v3, then it must be in the span on v1, v2, v3, which
% is H. Also, the rref(B) has a pivot in each column showing that they are
% linearly independent of each other. These two facts together mean that B
% is a basis of H. 
% When you create another matrix A = [B x] and take its rref, you see that 
% x is linearly dependent to the other three vectors, which means that it 
% is in their span, H. 
% Since the rref(A) shows that x = 3*v1+5*v2+2*v3, the coordinate vector
% for x is [3 ; 5 ; 2]

%% Problem 2
% (a)
format short
A = [1 cos(0) (cos(0))^2 (cos(0))^3;1 cos(0.1) (cos(0.1))^2 (cos(0.1))^3; 1 cos(0.2) (cos(0.2))^2 (cos(0.2))^3; 1 cos(0.3) (cos(0.3))^2 (cos(0.3))^3]

%%
% (b)
rref(A)
det(A)
%%
% (c)
% If the RREF of an nxn matrix = the identity matrix, then it is
% invertible. In this case, the RREF of A is the 4x4 identity matrix. 
% Also, when a determinant is not = to zero, then it is invertible. In this
% case the determinant = 6.5176e-11, so it is invertible even though it is
% very close to 0.
%%
% (d)
A = [1 cos(0) (cos(0))^2 (cos(0))^3;1 cos(0.2) (cos(0.2))^2 (cos(0.2))^3; 1 cos(0.5) (cos(0.5))^2 (cos(0.5))^3; 1 cos(1) (cos(1))^2 (cos(1))^3]
det(A)
%%
% (e)
% Here, v1 = 1, v2 = (sin(t))^s, and v3 = (cos(t))^2. Since there is a trig
% property that states (sin(t))^2 + (cos(t))^2 = 1, this means that 
% v1 = v2 + v3. This shows that v1 can be written as a linear combination
% of v2 and v3 meaning that they are dependent upon each other.
%%
% (f)

%% Problem 3
% (a)
v1 = [1 ; 0 ; 0 ; 0 ; 0 ; 0 ; 0]
v2 = [0 ; 1 ; 0 ; 0 ; 0 ; 0 ; 0]
v3 = [-1 ; 0 ; 2 ; 0 ; 0 ; 0 ; 0]
v4 = [0 ; -3 ; 0 ; 4 ; 0 ; 0 ; 0]
v5 = [1 ; 0 ; -8 ; 0 ; 8 ; 0 ; 0]
v6 = [0 ; 5 ; 0 ; -20 ; 0 ; 16 ; 0]
v7 = [-1 ; 0 ; 18 ; 0 ; -48 ; 0 ; 32]
C = [v1 v2 v3 v4 v5 v6 v7]
rref(C)
%%
% (b)
% C is a basis for H because it is linearly independent and can be written
% in terms of B which spans H.
%% Problem 4
% (a)
format rat
A = [0 3 1 8 1;9 -12 4 11 2;3 -5 1 1 1;6 -4 4 18 0]
rref(A)
% Basis for Nul(A) = {[1 4 1 4],[8 11 1 18]}
% Basis for COl(A) = {[0 9 3 6],[3 -12 -5 -4],[1 2 1 0]}
%%
% (b)
% dim(Nul(A)) = 2, dim(Col(A)) = 3
%% Problem 5
% (a)
v1 = [3 ; 7 ; 4 ; 3]
v2 = [2 ; 3 ; 1 ; 1]
v3 = [0 ; 5 ; 5 ; 3]
v4 = [1 ; 8 ; -3 ; 5]
v5 = [-1 ; 1 ; 2 ; 1]
%%
% (b)
A = [v1 v2 v3 v4 v5]
rref(A)
% Basis for A = {[3 7 4 3],[2 3 1 1],[1 8 -3 5]}
%%
% (c)
% Basis for W = {[3+7*t+4*t^2+3*t^3],[2+3*t+t^2+t^3],[1+8*t-3*t^2+5*t^3]}
% Dim(W) = 3
%%
% (d)
% No, w is not = P3 because W only has 3 dimensions while P3 has 4
% dimensions.
%% Problem 6
% (a)
v1 = [2 ; 1 ; -3 ; 2 ; -2 ; 4]
v2 = [1 ; 2 ; -12 ; -2 ; 3 ; 2]
v3 = [2 ; -2 ; 0 ; -1 ; 5 ; 4]
v4 = [0 ; 2 ; -4 ; 1 ; -3 ; 0]
%%
% (b)
A = [v1 v2 v3 v4]
rref(A)
%%
% (c)
% v4 = .4444*v1+.2222*v2-.5556*v3
% A4 = .4444*A1+.2222*A2-.5556*A3
