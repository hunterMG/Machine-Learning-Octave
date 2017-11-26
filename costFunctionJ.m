function J = costFunctionJ(X, y, theta)

% X is the "design matrix" contianing our training examples.
% y is the class labels.

m = size(X, 1); 	% number of training emxaples.
predictions = X*theta;  % predictions of hypothesis on all m examples
sqrErrors = (predictions-y).^2; % squared errors

J = 1/(2*m) * sum(sqrErrors);
