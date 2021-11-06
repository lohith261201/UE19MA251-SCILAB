clc;clear;close
// <T.LOHITH SRINIVAS_PES2UG19CS203>
// <CLASS1: Gaussian Elimination>
A =[2,3,-1;4,4,-3;-2,3,-1]; 
B =[5;3;1]; // co n s ta n t Ma t ri x
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
disp(x(3),x(2),x(1),'The values of x,y,z are');
disp(Aug(1,1),Aug(2,2),Aug(3,3),'The Pivots are');
