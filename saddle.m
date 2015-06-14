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

% loop over all cols found in maxCol
for j = 2 : length(maxCol)-1
    % loop over all rows of found element
    for i = 1 : size(M, 1)
        % if the current element of the same row index has the same col
        % index.. then add it's indeces
        if M(i, maxCol(j)) == vale(j)
            maxRow(end+1) = i;
            maxCol(end+1) = (j);
        end
    end
end
    
    
    
    
%  % loop over all row of found maxs
%  for i = 1 : length(maxRow)
%      % loop over all cols of found maxRows
%      for j = 1 : size(M, 2)
%          % check if the value of any element in all of the cols = val of
%          % element
%          if M(maxRow(i), j) == vale(i)
%              % add the index of that element to the index output
%              maxRow(end+1) = maxRow(i);
%              maxCol(end+1) = j;
%          end
%      end
%  end
    
ind = [maxRow', maxCol'];
end
