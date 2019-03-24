% OCR (Optical Character Recognition).
% Author: Ing. Diego Barragán Guerrero 
% e-mail: diego@matpic.com
% For more information, visit: www.matpic.com
%________________________________________
% PRINCIPAL PROGRAM
warning off %#ok<WNOFF>
% Clear all
clc, close all, clear all
delete('text.txt');
%%
% Read image
[filename, pathname] = uigetfile({'*.png';'*.jpg';'*.jpeg';'*.*'},'Select Image File');
R = strcat(pathname,filename);
image = imread(R);

%%
imagen = imresize(image,[100,100]);
% Show image
title('INPUT IMAGE WITH NOISE')
% Convert to gray scale
if size(imagen,3)==3 %RGB image
    imagen = rgb2gray(imagen);
end
% Convert to BW
threshold = graythresh(imagen);
imagen = im2bw(imagen,threshold);
imshow(imagen);
% Remove all object containing fewer than 30 pixels
imagen = bwareaopen(imagen,30);

%%
%Opens text.txt as file for write
% Load templates
load templates
global templates
% Compute the number of letters in template file
num_letras=size(templates,2);

%%
imagn = imagen;
comp=[ ];
for n=1:num_letras
    sem=corr2(templates{1,n},imagn);
    comp=[comp sem];
end
vd=find(comp==max(comp));

fid = fopen('text.txt','a');


I = floor(vd / 25);
if (mod(vd, 25) > 0)
    I = I + 1;
end;

if (I==1)
    fwrite(fid, unicode2native(char(hex2dec('0985')),'UTF-8'));
fclose(fid);
elseif (I==2)
    fwrite(fid, unicode2native(char(hex2dec('0986')),'UTF-8'));
fclose(fid);     
elseif (I==3)
    fwrite(fid, unicode2native(char(hex2dec('0987')),'UTF-8'));
fclose(fid);     
elseif (I==4)
    fwrite(fid, unicode2native(char(hex2dec('0988')),'UTF-8'));
fclose(fid);     
elseif (I==5)
    fwrite(fid, unicode2native(char(hex2dec('0989')),'UTF-8'));
fclose(fid);     
elseif (I==6)
    fwrite(fid, unicode2native(char(hex2dec('098A')),'UTF-8'));
fclose(fid);     
elseif (I==7)
    fwrite(fid, unicode2native(char(hex2dec('098B')),'UTF-8'));
fclose(fid);     
elseif (I==8)
    fwrite(fid, unicode2native(char(hex2dec('098F')),'UTF-8'));
fclose(fid);     
elseif (I==9)
    fwrite(fid, unicode2native(char(hex2dec('0990')),'UTF-8'));
fclose(fid);     
elseif (I==10)
    fwrite(fid, unicode2native(char(hex2dec('0993')),'UTF-8'));
fclose(fid);     
elseif (I==11)
    fwrite(fid, unicode2native(char(hex2dec('0994')),'UTF-8'));
fclose(fid);     
elseif (I==12)
    fwrite(fid, unicode2native(char(hex2dec('0995')),'UTF-8'));
fclose(fid);     
elseif (I==13)
    fwrite(fid, unicode2native(char(hex2dec('0996')),'UTF-8'));
fclose(fid);     
elseif (I==14)
    fwrite(fid, unicode2native(char(hex2dec('0997')),'UTF-8'));
fclose(fid);     
elseif (I==15)
    fwrite(fid, unicode2native(char(hex2dec('0998')),'UTF-8'));
fclose(fid);     
elseif (I==16)
    fwrite(fid, unicode2native(char(hex2dec('0999')),'UTF-8'));
fclose(fid);     
elseif (I==17)
    fwrite(fid, unicode2native(char(hex2dec('099A')),'UTF-8'));
fclose(fid);     
elseif (I==18)
    fwrite(fid, unicode2native(char(hex2dec('099B')),'UTF-8'));
fclose(fid);     
elseif (I==19)
    fwrite(fid, unicode2native(char(hex2dec('099C')),'UTF-8'));
fclose(fid);     
elseif (I==20)
    fwrite(fid, unicode2native(char(hex2dec('099D')),'UTF-8'));
fclose(fid);     
elseif (I==21)
    fwrite(fid, unicode2native(char(hex2dec('099E')),'UTF-8'));
fclose(fid);     
elseif (I==22)
    fwrite(fid, unicode2native(char(hex2dec('099F')),'UTF-8'));
fclose(fid);     
elseif (I==23)
    fwrite(fid, unicode2native(char(hex2dec('09A0')),'UTF-8'));
fclose(fid);     
elseif (I==24)
    fwrite(fid, unicode2native(char(hex2dec('09A1')),'UTF-8'));
fclose(fid);     
elseif (I==25)
    fwrite(fid, unicode2native(char(hex2dec('09A2')),'UTF-8'));
fclose(fid);     
elseif (I==26)
    fwrite(fid, unicode2native(char(hex2dec('09A3')),'UTF-8'));
fclose(fid);     
elseif (I==27)
    fwrite(fid, unicode2native(char(hex2dec('09A4')),'UTF-8'));
fclose(fid);     
elseif (I==28)
    fwrite(fid, unicode2native(char(hex2dec('09A5')),'UTF-8'));
fclose(fid);     
elseif (I==29)
    fwrite(fid, unicode2native(char(hex2dec('09A6')),'UTF-8'));
fclose(fid);     
elseif (I==30)
    fwrite(fid, unicode2native(char(hex2dec('09A7')),'UTF-8'));
fclose(fid);     
elseif (I==31)
    fwrite(fid, unicode2native(char(hex2dec('09A8')),'UTF-8'));
fclose(fid);     
elseif (I==32)
    fwrite(fid, unicode2native(char(hex2dec('09AA')),'UTF-8'));
fclose(fid);     
elseif (I==33)
    fwrite(fid, unicode2native(char(hex2dec('09AB')),'UTF-8'));
fclose(fid);     
elseif (I==34)
    fwrite(fid, unicode2native(char(hex2dec('09AC')),'UTF-8'));
fclose(fid);     
elseif (I==35)
    fwrite(fid, unicode2native(char(hex2dec('09AD')),'UTF-8'));
fclose(fid);     
elseif (I==36)
    fwrite(fid, unicode2native(char(hex2dec('09AE')),'UTF-8'));
fclose(fid);     
elseif (I==37)
    fwrite(fid, unicode2native(char(hex2dec('09AF')),'UTF-8'));
fclose(fid);     
elseif (I==38)
    fwrite(fid, unicode2native(char(hex2dec('09B0')),'UTF-8'));
fclose(fid);     
elseif (I==39)
    fwrite(fid, unicode2native(char(hex2dec('09B2')),'UTF-8'));
fclose(fid);     
elseif (I==40)
    fwrite(fid, unicode2native(char(hex2dec('09B6')),'UTF-8'));
fclose(fid);     
elseif (I==41)
    fwrite(fid, unicode2native(char(hex2dec('09B7')),'UTF-8'));
fclose(fid);     
elseif (I==42)
    fwrite(fid, unicode2native(char(hex2dec('09B8')),'UTF-8'));
fclose(fid);     
elseif (I==43)
    fwrite(fid, unicode2native(char(hex2dec('09B9')),'UTF-8'));
fclose(fid);     
elseif (I==44)
    fwrite(fid, unicode2native(char(hex2dec('09DC')),'UTF-8'));
fclose(fid);     
elseif (I==45)
    fwrite(fid, unicode2native(char(hex2dec('09DD')),'UTF-8'));
fclose(fid);     
elseif (I==46)
    fwrite(fid, unicode2native(char(hex2dec('09DF')),'UTF-8'));
fclose(fid);     
elseif (I==47)
    fwrite(fid, unicode2native(char(hex2dec('09CE')),'UTF-8'));
fclose(fid);     
elseif (I==48)
    fwrite(fid, unicode2native(char(hex2dec('0982')),'UTF-8'));
fclose(fid);     
elseif (I==49)
    fwrite(fid, unicode2native(char(hex2dec('0983')),'UTF-8'));
fclose(fid);     
elseif (I==50)
    fwrite(fid, unicode2native(char(hex2dec('0981')),'UTF-8'));
fclose(fid);
else
    disp(' not Found');
clear
end
%%
%Open 'text.txt' file
winopen('text.txt')
%%clear all





