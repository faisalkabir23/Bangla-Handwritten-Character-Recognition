%% Start from here
clc;
clear all;
close all;

%% Load database and split for training and testing just once
Database=imageSet('BinarySetATT_Edit','recursive');
[train, test]=partition(Database,[.50,.50]);
save('Database.mat','Database');
save('test.mat','test');
save('train.mat','train');
%% Load database
load('Database');
load('train.mat');
load('test.mat');

%% Extract BOF and K-means clustering just once
bag = bagOfFeatures(train);
save('bag.mat','bag');
%% Load bag
load('bag.mat');

%% Classify using CNN just once
catagoryClassify = trainImageCategoryClassifier(train, bag);
save('catagoryClassify.mat','catagoryClassify');
%% Load classifier
load('catagoryClassify.mat');

%% Test for all the test set images
[label, scores] = predict(catagoryClassify, test);
catagoryClassify.Labels(label);

%% Confusion matrix
confMat=evaluate(catagoryClassify,test);
