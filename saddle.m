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
            % get the col index of the largest num in a row
            [~, c] = max(M(i,:));
            if max(M(i,:)) == min(M(:, c))
                maxRow = i;
                maxCol = c;
            end
        end
    end
    ind = [maxRow, maxCol];   
end


