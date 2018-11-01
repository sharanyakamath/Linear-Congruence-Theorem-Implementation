%   Number Theory and Cryptography(CO313) Assignment

%   Topic: Solve linear congruence theorem ax ≡ c(modm)

%   Members:
%   Mehnaz Yunus 16CO124 
%   Sharanya Kamath 16CO140

% This function calculates the greatest common divisor (gcd) of a and b 
%--------------------------------------------------------------------------
function [gcd]=gcd_func(a, b)

if a == 0  % Base case - gcd(0, b) = b;
    gcd = b;
else
    % GCD calculated by recursive method (Euclid's algorithm): gcd(a, b) = gcd(b, a mod b)
    gcd = gcd_func(mod(b, a), a);    

end
