%Introduction to Programming with MATLAB - MOOC
%   Homework 8 - Problem 2
%   Inputs: binary filename
%   Return values: Matrix found in the file


function A = sparse_array_in (filename)
% get the file ID with reading & writing granted
fid = fopen(name, 'w+');

% validate fid
if fid < 0  
    A = []; 
end

% get row number
row = fread(fid, 1, 'uint32');

% get col number
col = fread(fid, 1, 'uint32');

% get number of nz
nz = fread(fid, 1, 'uint32');

dim = [row, col];

% get the elements of A
for i = 1 : row
    for j = 1 : col
        rowInd = fread(fid, 1, 'uint32');
        colInd = fread(fid, 1, 'uint32');
        val = fread(fid, 1, 'double');
    end
end

end



