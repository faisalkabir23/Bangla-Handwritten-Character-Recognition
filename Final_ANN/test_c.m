load ('featureout.mat');
p = featureout;

net.inputs{1}.processFcns = {'removeconstantrows','mapminmax'};
load net.mat;
load net;

y5 = sim(net,p);

[C I] = max(y5);