clc;clear;close
// <T.LOHITH SRINIVAS_PES2UG19CS203>
// <CLASS1: Gaussian Elimination>
A =[5,1,1,1;1,7,1,1;1,1,6,1;1,1,1,4]; 
B =[4;12;-5;-6]; // co n s ta n t Ma t ri x
n =length(B);
Aug =[A B];
// forward E.l i.m i.n a.t i.o.n
for j=1:n-1
    for i=j+1:n
     Aug(i,j:n+1)=Aug(i,j:n+1)-Aug(i,j)/Aug(j,j)*Aug(j,j:n+1);
end
end
// Backward s u b s t i t u t i o n
x = zeros(n,1) ;
x(n)=Aug(n,n+1)/Aug(n,n) ;
for i=n-1:-1:1
    x(i)=(Aug(i,n+1)-Aug(i,i+1:n)*x(i+1:n))/Aug(i,i);
    end
disp(x(1),x(2),x(3),x(4),'The values of x,y,z,t are');
disp(Aug(1,1),Aug(2,2),Aug(3,3),Aug(4,4),'The Pivots are');
