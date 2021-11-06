clc;clear;close
// <T.LOHITH SRINIVAS_PES2UG19CS203>
// <CLASS4: Span of the Column Space of A >
disp ('the given matrix is') 
A=[4,5,9,-2;6,5,1,12;3,4,8,-3] 
A(2,:)=A(2,:)-(A(2,1)/A(1,1))*A(1,:); 
A(3,:)=A(3,:)-(A(3,1)/A(1,1))*A(1,:); 
disp(A) 
A(3,:)=A(3,:)-(A(3,2)/A(2,2))*A(2,:); 
disp(A)
A(1,:)=A(1,:)/A(1,1); 
A(2,:)=A(2,:)/A(2,2); 
disp(A)
 for i=1:3
 for j=i:4 
if(A(i,j)<>0) 
disp('is a pivot column',j, 'column') 
break 
end 
end 
end
