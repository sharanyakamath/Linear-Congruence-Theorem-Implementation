%   Number Theory and Cryptography(CO313) Assignment

%   Topic: Solve linear congruence theorem ax ≡ c(modm)

%   Members:
%   Mehnaz Yunus 16CO124 
%   Sharanya Kamath 16CO140

% This function contains the main function 
%--------------------------------------------------------------------------

% Taking input from the user using dialog box
prompt = {'Enter a:','Enter c:','Enter m:'};
title = 'Input';
answer = inputdlg(prompt,title);

% changing datatype of input from string to num
a = str2num(answer{1});
c = str2num(answer{2});
m = str2num(answer{3});

% linear congruence equation
fprintf('\nLinear congruence equation: %dx ≡ %d (mod %d)\n', a, c, m);

% Calculating gcd of a and m by calling gcd_func()
gcd_of_a_and_m = gcd_func(a,m); 

% displaying gcd
fprintf('\ngcd(a,m) = gcd(%d,%d) = %d\n', a, m, gcd_of_a_and_m)

%if gcd(a,m) divides c, exactly gcd(a,m) number of incongruent solutions exist for the linear congruence
if(mod(c,gcd_of_a_and_m) == 0)
    
    fprintf('\ngcd(a,m) divides c\n');
    fprintf('\nThus, %d incongruent solutions for x exist\n', gcd_of_a_and_m);
    
    % Calculating one pair of u,v for the equation au + mv = gcd(a,m)
    [u0,v0] = gcd_Extended(a, m);
    
    % displaying u0 and v0
    fprintf('\nLet (u0, v0) be a solution pair to the equation au+mv=gcd(a,m)\n%du + %dv = %d', a, m, gcd_of_a_and_m);
    fprintf('\nu0 = %d  v0 = %d\n', u0, v0);
    
    % Multiplying the solution by c/gcd(a,m) because we need the solutions to ax + my = c
    x0 = u0 * c / gcd_of_a_and_m;
    y0 = v0 * c / gcd_of_a_and_m;
    
    % displaying x0 and y0
    fprintf('\nLet (x0, y0) be a solution pair to the equation ax+my=c\n%dx + %dy = %d', a, m, c);
    fprintf('\nx0 = %d  y0 = %d\n', x0, y0);
    
    % Displaying the solutions
    fprintf('\nIncongruent solutions for x:\n');
    
    for t = 0 : gcd_of_a_and_m -1 % Running a loop from 0 to m-1 for t 

        ans = x0 + floor(m / gcd_of_a_and_m) * t; 
        fprintf('x ≡ %d (mod %d)\n', ans, m);

    end
    
% if gcd(a,m) does not divide c, no solution exists for the linear congruence
else
    % displaying in a message box
    f = msgbox(sprintf('Solution does not exist for %dx ≡ %d (mod %d)',a,c,m), 'gcd(a,m) does not divide c');
    fprintf('\nSolution does not exist for %dx ≡ %d (mod %d)\n', a, c, m);
    
end
