clc;clear;close 
// <T.LOHITH SRINIVAS_PES2UG19CS203>
// <CLASS3: The Gauss - Jordan method of calculating A inverse>
A =[1,1,1;4,3,-1;3,5,3];
 n =length(A(1,:)); 
Aug =[A,eye(n,n)]; 
// forward E.l i.m i.n a.t i.o.n 
for j=1:n-1 
for i=j+1:n 
Aug(i,j:2*n)=Aug(i,j:2*n)-Aug(i,j)/Aug(j,j)*Aug(j,j:2*n);
 end 
end
 
// Backward s u b s t i t u t i o n
 for j=n:-1:2 
Aug(1:j-1,:)=Aug(1:j-1,:)-Aug(1:j-1,j)/Aug(j,j)*Aug(j,:);
 end
 //Diagonal normalization 
for j=1:n 
Aug(j,:)=Aug(j,:)/Aug(j,j); 
end 
B=Aug(:,n+1:2*n); 
disp(B,'The inverse of A is');
