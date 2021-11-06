clc;clear;close 
// <T.LOHITH SRINIVAS_PES2UG19CS203>
// <CLASS6: Projections by Least Squares  >
A =[1,-1;1,0;1,1]; 
disp(A,'a='); 
b=[4;5;9]; 
disp(b,'b='); 
x=(A'*A)\(A'*b); 
disp(x,'x='); 
C=x(1,1); 
D=x(2,1); 
disp(C,'C='); 
disp(D,'D='); 

disp('The line of best fit is b=C+Dt')
