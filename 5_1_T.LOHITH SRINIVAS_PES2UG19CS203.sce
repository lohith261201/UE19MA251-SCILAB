clc;clear;close
// <T.LOHITH SRINIVAS_PES2UG19CS203>
// <CLASS5: The Four Fundamental Subspaces >
 A=[0,1,0;0,0,1;0,0,1]
 disp(A,'A=');
 [m,n]=size(A); 
disp(m,'m='); 
disp(n,'n=');
[v,pivot]=rref(A); 
disp(rref(A)); 
disp(v);
 r=length(pivot); 
disp(r,'rank=') 
cs=A(:,pivot); 
disp(cs,'column space='); 
ns=kernel(A); 
disp(ns,'null space='); 
rs=v(1:r,:)'; 
disp(rs,'row space='); 
lns=kernel(A'); 
disp(lns,'left null space=');
