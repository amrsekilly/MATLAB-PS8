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
row = fread(fid, 1, 'uint32');

% get col number
col = fread(fid, 1, 'uint32');

% get number of nz
nz = fread(fid, 1, 'uint32');

% % get the elements of A
% for i = 1 : row
%     for j = 1 : col
%         rowInd = fread(fid, 1, 'uint32');
%         colInd = fread(fid, 1, 'uint32');
%         val = fread(fid, 1, 'double');
%         
%       %  if rowInd == i & colInd == j
%             A(i, j) = val;
%        % else
%          %   A(i, j) = 0;
%         %end
%     end
% end


fclose(fid);
end



