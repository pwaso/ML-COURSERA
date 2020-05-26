function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y
data = load('ex1data1.txt');
X = data(:, 1); y = data(:, 2);
m = length(y); % number of training examples
% Initialize some useful values
m = length(y); % number of training examples
theta = zeros(2, 1); % initialize fitting parameters

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.
h = X*theta';
  for i=1:m
     J = J + (h(i) - y(i))^2;
   end
  J=(1/(2*m))*J;

% =========================================================================

end
