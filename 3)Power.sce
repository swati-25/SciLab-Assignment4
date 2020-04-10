clc;clear;close;
n=3
disp("Enter the elements for matrix A")
for i=1:n
    for j=1:n
        A(i,j)=input("Enter the element ")
    end
end

disp(A,'Given Matrix is')
u0=[1 1 1]';
disp(u0,' Initial vector is ')
v=A*u0;
a=max(u0);
disp(a,'The First approximation to eigen value is');
while abs(max(v)-a)>0.002
    disp(v,"The current eigen vector is")
    a=max(v);
    disp(a,"The current eigen value is")
    u0=v/max(v);
    v=A*u0;
end
format('v',4);
disp(max(v),'Largest Eigen Value is :')
format('v',5);
disp(u0,'Corresponding Eigen Vector is :')
