clc
clear all;
close all;

%%
[filename, pathname] = uigetfile({'*.png';'*.jpg';'*.jpeg';'*.*'},'Select Image File');
I=strcat(pathname,filename); 

%  I = imread(I);
% assignin('base', 'image', I);
imshow(I)

%% 
image = getimage;
%% convert the rgb image to gray scale image 
if size(image, 3) == 3
    image = rgb2gray(image);
end;

%% conver to binary image

%%
z = feature_extract(~im2bw(image))
load ('featureout.mat');
featureout=z;
save ('featureout.mat','featureout');

%%
test

%%
%clear all
winopen('output.txt');
