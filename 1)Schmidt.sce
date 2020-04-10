clc;clear;close;
n=3
disp("Enter the elements for matrix Z")
for i=1:n
    for j=1:n
        Z(i,j)=input("Enter the element ")
    end
end
disp(Z,'Z=');
[m,n]=size(Z);
for k=1:n
    V(:,k)=Z(:,k);
    for j=1:k-1
        R(j,k)=V(:,j)'*Z(:,k);
            V(:,k)=V(:,k)-R(j,k)*V(:,j);
     end
     R(k,k)=norm(V(:,k));
     V(:,k)=V(:,k)/R(k,k);
end
disp(V,'Q=');
