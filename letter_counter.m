%Introduction to Programming with MATLAB - MOOC
%   Homework 8 - Problem 3
%   Inputs: string - text filename
%   Return values: scalar - count of chars found in the text file

function count = letter_counter (filename)
S = [];
% open the file
fid = fopen(filename, 'rt');
if fid < 0 
    count = -1;
end

% raed the content
content = fgets(fid);
while ischar(content)
    S(end+1) = content;
    content = fgets(fid);
end
fclose(fid);
count = length(S);
end