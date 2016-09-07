function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.
%disp(theta);
C = X*theta;

for i = (1:m)
%J += sum((X(i,:)*theta - y(i,:))^2); 
J += (C(i) - y(i))^2;
%disp(J);
%disp(X(i,:));
%disp(y(i,:));
%disp(sum(X(i,:)*theta - y(i,:)));
endfor
J = J/(2*m);
%disp(J);


% =========================================================================

end
