%Introduction to Programming with MATLAB - MOOC
%   Homework 8 - Problem 2
%   Inputs: binary filename
%   Return values: Matrix found in the file


function A = sparse_array_in (filename)
% get the file ID with reading & writing granted
fid = fopen(filename, 'r');

% validate fid
if fid < 0  
    A = []; 
end

% get row number
rows = fread(fid, 1, 'uint32');

% get col number
cols = fread(fid, 1, 'uint32');

% get number of nz
nz = fread(fid, 1, 'uint32');

% create nxm zeros mat
A = zeros(rows, cols);

% parse in the elements
for i = 1 : nz
    rowInd = fread(fid, 1, 'uint32');
    colInd = fread(fid, 1, 'uint32');
    val = fread(fid, 1, 'double');
    A(rowInd, colInd) = val;
end
fclose(fid);
end



