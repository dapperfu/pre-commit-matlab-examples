function highComplexityFunction(x, y)
if x > 0
disp('X is positive.');
else
disp('X is non-positive.');
end

if y > 0
disp('Y is positive.');
else
disp('Y is non-positive.');
end

if x > 0 && y > 0
disp('Both X and Y are positive.');
elseif x > 0 || y > 0
disp('At least one of X and Y is positive.');
else
disp('Neither X nor Y is positive.');
end

for i = 1:5
if mod(i, 2) == 0
disp('Even');
else
disp('Odd');
end
end

switch x
case 1
disp('X is 1.');
case 2
disp('X is 2.');
case 3
disp('X is 3.');
otherwise
disp('X is not 1, 2, or 3.');
end
end