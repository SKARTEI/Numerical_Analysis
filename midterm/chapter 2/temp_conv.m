function temp_F = temp_conv(temp_C)
% function converts temperature in celcius 
%to temperature in fahrenheit

temp_F = zeros(1, length(temp_C));

for ii = 1:1:length(temp_C)
    temp_F(ii) = temp_C(ii) * 9/5 + 32;
end
