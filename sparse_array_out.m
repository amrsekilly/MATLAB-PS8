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

% array has n rows (uint32)
fwrite(fid, size(A, 1), 'uint32');

% array has n columns (uint32)
fwrite(fid, size(A, 2), 'uint32');

% there are n non-zero elements in the array (uin32)
fwrite(fid, size(A(A ~= 0), 1), 'uint32');

% non-zero elements ordered
% 1st nz row index (uint32)
% 1st nz col ind (uint32)
% 1st nz val (double)
for i = 1 : size(A, 1) % row loop
    for j = 1 : size(A, 2) % col loop
        if A(i, j) ~= 0 % add that value
            fwrite(fid, i, 'uint32');
            fwrite(fid, j, 'uint32');
            fwrite(fid, A(i, j), 'double');
        end
    end
end

fclose(fid);
end



