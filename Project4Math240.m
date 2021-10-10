%% Math 240 Matlab Project 4
% Spring 2020
%
% Section [0223]
%
% Author: [James Frech]
%
%%
%% Problem 1
% (a)
format rat;
b1 = [1;0;0;0];
b2 = [1;2;0;0];
b3 = [2;-1;3;0];
b4 = [4;-1;0;3];
c1 = [1;3;0;1];
c2 = [2;1;0;0];
c3 = [0;3;-1;4];
c4 = [0;3;0;0];
P = [b1 b2 b3 b4]
Q = [c1 c2 c3 c4]
%%
% (b)
R = inv(Q)*P
%%
% (c)
v = [0;0;0;1];
Ccoord = inv(Q)*v
%%
% (d)
bcoordpt = [0;1;2;3];
Ccoordpt = R*bcoordpt
%%
% (e)
% p(t) = 33-8t-6*t^2-(76/3)*t^3
%% Problem 2
% (a)
format short
A = [1, 2, 3;4, 5, 6;7, 8, 9]
eig(A)
%%
% (b)
B = A;
B([1 2],:)=B([2 1],:)
C = A;
C(1,:)=7*C(1,:)
D = A;
D(3,:)=D(3,:)-D(1,:)
Bvalues = eig(B)
Cvalues = eig(C)
Dvalues = eig(D)
%%
% (c)
% The number 0 is an eigenvalue if and only if A is not invertible. Since A
% is not invertible, neither will be any matrix obtained from doing row 
% operations on matrix A. Since none of the matricies obtained from row
% operations on A are invertible, they will all have an eigenvalue of 0.
%% Problem 3
% (a)
A = [-84 51 36;-90 53 40;-72 46 29]
[P,D] = eig(A)
%%
% (b)
A = P*D*inv(P)
%%
% (c)
% eigenvalues are 
% 3
% -2
% -3
% eigenvectors are 
% [-.5774; -.5774; -.5774] (for 3)
% [ -.5571; -.3714; -.7428] (for -2)
% [.4061; 0; .9138] (for -3)
%% Problem 4
% (a)
A = [3 1; 0 3]
[P,D] = eig(A)
%%
% (b)
A = P*D*inv(P)
%%
% (c)
% Basis for eigenspace A with lambda=3 {[1;0])
%%
% (d)
% No there is not. There is only one eigenvalue with multiplicity 2, and
% the dimensions of its eigenspace equals 1. Since the dimensions of the
% eigenspace of all A equals the dimensions of the eigenspaces of its
% eigenvalues added up, the total dimensions of eigenspace A equals 1. Since A only
% has a 1 dimensional eigenspace, there cannot be any basis in R2
% consisting of eigenvectors of A because any basis of R2 has 2 dimensions,
% which is too many.
%% Problem 5
% (a)
A = [-2 -1 -1; 2 1 0; 0 2 5; 3 0 3]
dot([-2;2;0;3],[-1;1;2;0])
dot([-1,0,5,3],[-1,0,5,3])
%%
% (b)
transpose(A)*A
%%
% (c)
% An entry is equal to the dot product of vector n with vector p where n is
% the row and p is the column. For example, the entry in the first row and
% first column is the dot product of the first vector in the matrix U times
% itself. The entry in the fourth row and second column is the second 
% vector in U times the fourth vector in U.
% [dot(u1,u1) dot(u1,u2) dot(u1,u3)]
% [dot(u2,u1) dot(u2,u2) dot(u2,u3)]
%%
% (d)
% This answer is the same as the last answer except that instead of doing
% dot(u1,u2) for example, you would do dot(transpose(u1),transpose(u2)). In
% other words, you are dotting the transpose vectors together as opposed to
% the actual vectors of A.
%%
% (e)
A*transpose(A)
dot([-2;-1;-1],[2;1;0])
dot([0,2,5],[3,0,3])
%%
% (f)
Q = [1/sqrt(14) 1/sqrt(3) 5/sqrt(42); 2/sqrt(14) 1/sqrt(3) -4/sqrt(42); 3/sqrt(14) -1/sqrt(3) 1/sqrt(42)]
v1 = [1/sqrt(14);2/sqrt(14);3/sqrt(14)]
v2 = [1/sqrt(3);1/sqrt(3);-1/sqrt(3)]
v3 = [5/sqrt(42);-4/sqrt(42);1/sqrt(42)]
transpose(Q)*Q
%%
% (g)
% There is a theorem that states any nxp matrix has orthonormal columns if
% and only if transpose(U)*U = Ip. In this case transpose(Q)*Q = I3.
% Therefore the columns of Q must be orthonormal.
%%
% (h)
% Since Q is orthonormal, that means that rref(Q) equals the identity
% matrix. Since you can row reduce either using the columns or rows, you
% will end up getting the same identity matrix since there is a pivot in
% every column and every row. Also, the row matrix is transpose(Q) and
% since its transpose matrix is just the original Q, you can just multiply
% Q*transpose(Q) and you will get the Identity matrix that way.