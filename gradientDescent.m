function [theta, J_history] = gradientDescent(X, y, theta, alpha, iterations)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha
data = load('ex1data1.txt');

 y = data(:, 2);
% Initialize some useful values
m = length(y); % number of training examples
X = [ones(m, 1), data(:,1)];
iterations = 1500;
alpha = 0.01;
J_history = zeros(iterations, 1);
theta = zeros(2, 1); % initialize fitting parameters
for iter = 1:iterations

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
    


    temp = (X * theta) - y;
    theta = theta - ((alpha/m) * X'*temp);



    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
