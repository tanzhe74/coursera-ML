function [mu sigma2] = estimateGaussian(X)
%ESTIMATEGAUSSIAN This function estimates the parameters of a 
%Gaussian distribution using the data in X
%   [mu sigma2] = estimateGaussian(X), 
%   The input X is the dataset with each n-dimensional data point in one row
%   The output is an n-dimensional vector mu, the mean of the data set
%   and the variances sigma^2, an n x 1 vector
% 

% Useful variables
[m, n] = size(X);

% You should return these values correctly
mu = zeros(n, 1);
sigma2 = zeros(n, 1);
NN = zeros(m,n);

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the mean of the data and the variances
%               In particular, mu(i) should contain the mean of
%               the data for the i-th feature and sigma2(i)
%               should contain variance of the i-th feature.
%

mu = mean(X);
% for i= 1:n
%     NN(:,i) = mu(i);
% end
% 
% sigma2 = 1/m*sum((X-NN).^2,2);

for i = 1:n
    for j = 1:m
        sigma2(i)=sigma2(i)+(X(j,i)-mu(i)).^2;
    end
end
sigma2 = sigma2/m;
    









% =============================================================


end
