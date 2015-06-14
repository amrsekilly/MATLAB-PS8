%Introduction to Programming with MATLAB - MOOC
%   Homework 8 - Problem 4
%   Inputs: Matrix M
%   Return values: indeces

function ind = saddle (M)
% saddle elem is
% greater than all elems in it's row
% ls all elems in it's col

ind = [];
maxRow = [];
maxCol = [];
vale = [];
for i = 1 : size(M, 1)
    %   for j = 1 : size(M, 2)
    % get the col index of the largest num in a row
    [~, c] = max(M(i,:));
    % if that number is also the minimum of all cols
    if max(M(i,:)) == min(M(:, c))
        % get it's indeces
        maxRow(end+1) = i;
        maxCol(end+1) = c;
        vale(end+1) = M(i, c);
    end
    
    % end
end

% find all the elements of a coloumn that has same val
for i = 2 : length(maxRow)
    [r, c, ~]= find(M == M(maxRow(i), maxCol(i)));
    maxRow = [ r'];
    maxCol = [ c'];
end

ind = [maxRow', maxCol'];
end
