function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%

data = [X,y];

ind0 = [];
ind1 = [];
for i = 1:length(y),
   if y(i) == 1;
      ind0 = [ind0,i];
   elseif (y(i) == 0);
      ind1 = [ind1,i];
   end;
end;
plot(X(ind0,1),X(ind0,2), 'color','g','k+')
plot(X(ind1,1),X(ind1,2), 'color','b','ko')
legend('Admitted','Not admitted')

% =========================================================================



hold off;

end
