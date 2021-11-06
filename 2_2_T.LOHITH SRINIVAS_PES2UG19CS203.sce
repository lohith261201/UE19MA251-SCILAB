clc;clear;close
// <T.LOHITH SRINIVAS_PES2UG19CS203>
// <CLASS2: LU DECOMPOSITION>
A=[5,1,1,1;1,7,1,1;1,1,6,1;1,1,1,4];
U=A;
m=det(U(1,1));
n=det(U(2,1));
a=n/m;
U(2,:)=U(2,:)-U(1,:)/(m/n);
n=det(U(3,1));
b=n/m;
U(3,:)=U(3,:)-U(1,:)/(m/n);
n=det(U(4,1));
c=n/m;
U(4,:)=U(4,:)-U(1,:)/(m/n);

m=det(U(2,2));
n=det(U(3,2));
d=n/m;
U(3,:)=U(3,:)-U(2,:)/(m/n);
n=det(U(4,2));
e=n/m;
U(4,:)=U(4,:)-U(2,:)/(m/n);

m=det(U(3,3));
n=det(U(4,3));
f=n/m;
U(4,:)=U(4,:)-U(3,:)/(m/n);

disp(U,'The upper triangular matrix is U');
L=[1,0,0,0;a,1,0,0;b,d,1,0;c,e,f,0];
disp(L,'The lower triangular matrix is L');
