%% Load the Confusion Matrix
load('confMat.mat');

%% Evaluate All the Values
Result=0;
con=zeros(50,50);
for i=1:50
    for j=1:50
        if i==j
            con(i,j)=confMat(i,j)/22;
        end
        Result=Result+con(i,j);
    end
end
Result=Result/50;
Result=Result*100;
fprintf('Average Accuracy %f',Result);