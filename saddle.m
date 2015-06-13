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
    for i = 1 : size(M, 1)
        for j = 1 : size(M, 2)
            % get the largest in the nth row and smallest in nthe col
            [maxRow(end+1), r] = max(M(i, :));
            [maxCol(end+1), c] = min(M(:, j));
            indn = [r, c];
        end
    end
    
    
end


