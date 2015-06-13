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
     %   for j = 1 : size(M, 2)
            % get the col index of the largest num in a row
            [~, c] = max(M(i,:));
            % if that number is also the minimum of all cols
            if max(M(i,:)) == min(M(:, c))
                % get it's indeces
                maxRow(end+1) = i;
                maxCol(end+1) = c;
                if (i > 1)
                    if (max(M(i,:)) == max(M(i-1,:))) % all elements in a row are equal
                        maxRow(end+1) = i + 1;
                        maxCol(end+1) = c + 1;
                    end
                end
            end
       % end
    end
    ind = [maxRow', maxCol'];   
end

% 
% function isbad = bad_matrix(A)
% f = A(1, 1);
% isbad = false;
% for i = 1 : size(A, 1)
%     for j = 1 : size(A, 2)
%         if i > 1 & j > 1
%             if A(i, j) == A (i - 1, j - 1)
%                 isbad = true;
%             else
%                 isbad = false;
%             end
%         end
%     end
% end
% end