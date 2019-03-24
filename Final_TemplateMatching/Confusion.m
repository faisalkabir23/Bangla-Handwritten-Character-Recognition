clc
clear all;
close all;
disp('Testing Result...')
% this will create the input to the neural network.  
% read the all the image from the training_set folder and convert it to
% gray scale image . this use feature_extract.m matlab file to extract the
% feature of the image . and save on the variable x
%
%%
% letters = ['a' 'b' 'c' 'd' 'e' 'f' 'g' 'h' 'i' 'j' 'k' 'l' 'm' 'n' 'o' 'p' 'q' 'r' 's' 't' 'u' 'v' 'w' 'x' 'y' 'z' 'num1' 'num2' 'num3' 'num4' 'num5' 'num6' 'num7' 'num8'];
%letters = ['t_a   '; 't_b   '; 't_c   '; 't_d   '; 't_e   '; 't_f   '; 't_g   '; 't_h   '; 't_i   '; 't_j   '; 't_k   '; 't_l   '; 't_m   '; 't_n   '; 't_o   ' ;'t_p   '; 't_q   '; 't_r   '; 't_s   '; 't_t   ' ;'t_u   ' ;'t_v   ' ;'t_w   '; 't_x   ' ;'t_y   '; 't_z   '; 't_za  ' ;'t_zb  '; 't_zc  '; 't_zd  '; 't_ze  '; 't_zf  '; 't_zg  '; 't_zh  '; 't_zi  '; 't_zj  '; 't_zk  '; 't_zl  '; 't_zm  '; 't_zn  '; 't_zo  ' ;'t_zp  '; 't_zq  '; 't_zr  '; 't_zs  '; 't_zt  ' ;'t_zu  ' ;'t_zv  ' ;'t_zw  ';'t_zx  '];
letters = ['a   '; 'b   '; 'c   '; 'd   '; 'e   '; 'f   '; 'g   '; 'h   '; 'i   '; 'j   '; 'k   '; 'l   '; 'm   '; 'n   '; 'o   ' ;'p   '; 'q   '; 'r   '; 's   '; 't   ' ;'u   ' ;'v   ' ;'w   '; 'x   ' ;'y   '; 'z   '; 'za  ' ;'zb  '; 'zc  '; 'zd  '; 'ze  '; 'zf  '; 'zg  '; 'zh  '; 'zi  '; 'zj  '; 'zk  '; 'zl  '; 'zm  '; 'zn  '; 'zo  ' ;'zp  '; 'zq  '; 'zr  '; 'zs  '; 'zt  ' ;'zu  ' ;'zv  ' ;'zw  ';'zx  '];
increment = 1;
wrong = 0;
right = 0;
cnt = 0;
%%
for y = 1 : 1 : 50
    xx = 0;
    yy = 0;
    for k = 1 : 1 : 25
        cnt = cnt + 1;
        test = strcat(letters(y,:) , num2str(k));
        imageName = imread(strcat('test_images/',test,'.png'));
        imagen = imresize(imageName,[100,100]);
        if size(imagen,3)==3 %RGB image
            imagen = rgb2gray(imagen);
        end
        threshold = graythresh(imagen);
        imagen = im2bw(imagen,threshold);
        imagen = bwareaopen(imagen,30);
        
        load('templates.mat');
        
        num_letras=size(templates,2);
        imagn = imagen;
        comp=[ ];
        for n=1:num_letras
            sem=corr2(templates{1,n},imagn);
            comp=[comp sem];
        end
        
        vd=find(comp==max(comp));
        I = floor(vd / 25);
        if (mod(vd, 25) > 0)
            I = I + 1;
        end
        
        if (I==y)
            xx = xx + 1;
        else
            yy = yy + 1;
        end
        disp(cnt)
    end;
    right = right + xx;
    wrong = wrong + yy;
    ff = [xx;yy];
    Result(:, increment) = (ff);
    increment = increment + 1;
 end;
 %%
 Result = Result';
 disp('Complete..!!!')
 %%