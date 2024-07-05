% myscript.m
fprintf('Hello, MATLAB running inside Docker!\n');

% Define some variables
a = 5;
b = 10;

% Perform some calculations
c = a + b;
fprintf('Sum of %d and %d is %d\n', a, b, c);

% Plotting example
x = linspace(0, 2*pi, 100);
y = sin(x);
plot(x, y);
title('Sine Wave');
xlabel('Angle');
ylabel('sin(angle)');