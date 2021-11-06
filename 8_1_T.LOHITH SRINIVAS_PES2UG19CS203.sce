clc;clear;close
// <T.LOHITH SRINIVAS_PES2UG19CS203>
// <CLASS8: Eigen values and Eigen vectors of a given square matrix >
A =[3,-2,5;-2,3,6;5,6,4]; 
lam=poly(0,'lam'); lam=lam; 
charmat=A-lam*eye(3,3); 
disp(charmat,'the characteristic matrix is');
charpoly=poly(A,'lam');
disp(charpoly,'the characteristic polynomial is'); 
lam=spec(A);
disp(lam,'the eigen values of A are');
[evec,eval]=spec(A); 
disp(evec,'the eigen vectors of A are');
[x,lam]=spec(A) 
disp(x,'the eigen vectors of A are');
