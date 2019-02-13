% Feature extraction
clc;
close all;
clear all;
n = 1;
for iii = 1:n
I1 = imread(sprintf('%d.jpg',iii));
[m,n,o] = size(I1);
if o == 3
    im = im2double(rgb2gray(I1));
else
    im = im2double(I1);
end
figure,imshow(im);
%             imwrite(im,sprintf('%d.jpg',iii));
%             L1 = imread(sprintf('%d.jpg',iii));fet1
L1 = im;
fet = extractLBPFeatures(L1);
end
save('fet','fet');    
test = {'richi';'tamil'};
save('test','test')
