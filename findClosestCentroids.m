function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

% Number of examples
m = size(X,1);

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%
<<<<<<< HEAD
for i = 1:m
	for j = 1:K
=======
for i = 1:size(X,1)
	for j = 1:size(centroids,1)
>>>>>>> eaef3ac9c5ff78a3274ec95134f5967e7a06745e
		dist(j) = sum((X(i,:) - centroids(j,:)).^2);
	end
	[Y, idx(i)] = min(dist);
end
<<<<<<< HEAD
idx = idx';
=======
>>>>>>> eaef3ac9c5ff78a3274ec95134f5967e7a06745e
% =============================================================
end

