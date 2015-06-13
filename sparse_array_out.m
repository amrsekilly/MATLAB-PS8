%Introduction to Programming with MATLAB - MOOC
%   Homework 8 - Problem 1
%   Inputs: A = 2-D array of doubles,
%                name = string - Name of the output binary file.
%   Return values: opened = logical output, success opening the file or
%   not.

function opened = sparse_array_out (A, name)
%Sparse Arrray out
%   File format:
%   1. it starts with three uint32 scalars specifying the number
%   of rows of the array followed by the number of columns followed by the
%   number of non-zero elements in the array.
%   2. Then each non-zero element of the array is represented by
%   two uint32 scalars and a double scalar in the file in this
%   order: 
%   its row index (uint32), its column index (uint32),
%   and its value (double).

% get the file ID with reading & writing granted
fid = fopen(name, 'w+');

% validate fid
if fid < 0  
    opened = false; 
else 
    opened = true;
end

% push the row-col nums - elements > 0
% dims = size(A);
% nonzero = size(A(A ~= 0), 1);
% scalar = [dims, nonzero];
% 
% % fwrite(fid, length(scalar), 'uint32');
% fwrite(fid, scalar, 'uint32');
% 
% % write the data
% fwrite(fid, size(A(A ~= 0), 1), 'uint32');
% fwrite(fid, size(A(A ~= 0), 2), 'uint32');
% fwrite(fid, A(A ~= 0), 'double');



fclose(fid);
end



