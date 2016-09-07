function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCostMulti) and gradient here.
    %
 c = X*theta; 
    %c = theta;
    for k = 1:rows(theta)
    theta(k) = theta(k) - (sum((c-y).*X(:,k))*alpha/m);
    %theta(2) = theta(2) - (sum((c-y).*X(:,2))*alpha/m);
    
    %for i=1:m
    %J_history(iter) = X(m)'*theta
    % ============================================================
    end
    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);
    %disp(J_history(iter));
    %pause;

    % ============================================================

    % Save the cost J in every iteration    
    %J_history(iter) = computeCostMulti(X, y, theta);

end
