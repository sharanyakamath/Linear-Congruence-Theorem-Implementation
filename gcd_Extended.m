%   Number Theory and Cryptography(CO313) Assignment

%   Topic: Solve linear congruence theorem ax ≡ c(modm)

%   Members:
%   Mehnaz Yunus 16CO124 
%   Sharanya Kamath 16CO140

% This function calculates the x and y values satisfying the equation using
% the extended Euclidean algorithm.
%         ax + by = gcd(a,b)
%--------------------------------------------------------------------------
function[x, y] = gcd_Extended(a, b) 
%x is the modular multiplicative inverse of “a modulo b”, and y is the modular multiplicative inverse of “b modulo a”

  if (a == 0) %Base Case 
    x = 0; %Assign x as 0
    y = 1; %Assign y as 1
    
  else
    % Let values of x and y calculated by the recursive call be x1 and y1
    [x1, y1] = gcd_Extended(mod(b,a), a); 
    
    % Update x and y using results of recursive  call 
    x = y1 - floor(b/a) * x1; 
    y = x1;  
    
  end
