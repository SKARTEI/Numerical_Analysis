function n_class = age_class(~)
% classify the age value between 1-100
% input:
% any number between 1-100
%
% output:
% n_class= class which the number belongs
n =input("enter your age: ");

if (n>1 && n<30)
    disp("age is between 0 and 29");
    n_class = 1;
elseif (n>=30  && n<=60)
    disp("age is between 30 and 60");
    n_class = 2;
elseif (n>60  && n<= 100)
     disp("age is between 61 and 100");
     n_class = 3;
else
     disp("error, age is not in the acceptable class range");
end
 fprintf("age class is : %d", n_class)