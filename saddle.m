%Introduction to Programming with MATLAB - MOOC
%   Homework 8 - Problem 4
%   Inputs: Matrix M
%   Return values: indeces

function ind = saddle (M)
% saddle elem is
% greater than all elems in it's row
% ls all elems in it's col

    ind = [];
%     maxRow = [];
%     maxCol = [];
%     for i = 1 : size(M, 1)
%      %   for j = 1 : size(M, 2)
%             % get the col index of the largest num in a row
%             [~, c] = max(M(i,:));
%             % if that number is also the minimum of all cols
%             if max(M(i,:)) == min(M(:, c))
%                 % get it's indeces
%                 maxRow(end+1) = i;
%                 maxCol(end+1) = c;
%                 if (i > 1)
%                     if (max(M(i,:)) == max(M(i-1,:))) % all elements in a row are equal
%                         maxRow(end+1) = i + 1;
%                         maxCol(end+1) = c + 1;
%                     end
%                 end
%             end
%        % end
%     end
%     ind = [maxRow', maxCol'];   

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
            end
          
       % end
    end

 % loop over all rows of found maxs
 for i = 1 : length(maxRow)
     % loop over all cols of found maxRows
     for j = 1 : size(M, 2)
         % check if the value of any element in all of the cols = val of
         % element
         if M(i, j) == M(maxRow(i), maxCol(i))
             % add the index of that element to the index output
             maxRow(end+1) = i;
             maxCol(end+1) = j;
         end
     end
 end
    
ind = [maxRow', maxCol'];
end
