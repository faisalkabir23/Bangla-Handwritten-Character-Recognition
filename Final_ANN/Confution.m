clc
clear all;
close all;
disp('Testing...')
%%
letters = ['t_a   '; 't_b   '; 't_c   '; 't_d   '; 't_e   '; 't_f   '; 't_g   '; 't_h   '; 't_i   '; 't_j   '; 't_k   '; 't_l   '; 't_m   '; 't_n   '; 't_o   ' ;'t_p   '; 't_q   '; 't_r   '; 't_s   '; 't_t   ' ;'t_u   ' ;'t_v   ' ;'t_w   '; 't_x   ' ;'t_y   '; 't_z   '; 't_za  ' ;'t_zb  '; 't_zc  '; 't_zd  '; 't_ze  '; 't_zf  '; 't_zg  '; 't_zh  '; 't_zi  '; 't_zj  '; 't_zk  '; 't_zl  '; 't_zm  '; 't_zn  '; 't_zo  ' ;'t_zp  '; 't_zq  '; 't_zr  '; 't_zs  '; 't_zt  ' ;'t_zu  ' ;'t_zv  ' ;'t_zw  ';'t_zx  '];
%letters = ['a   '; 'b   '; 'c   '; 'd   '; 'e   '; 'f   '; 'g   '; 'h   '; 'i   '; 'j   '; 'k   '; 'l   '; 'm   '; 'n   '; 'o   ' ;'p   '; 'q   '; 'r   '; 's   '; 't   ' ;'u   ' ;'v   ' ;'w   '; 'x   ' ;'y   '; 'z   '; 'za  ' ;'zb  '; 'zc  '; 'zd  '; 'ze  '; 'zf  '; 'zg  '; 'zh  '; 'zi  '; 'zj  '; 'zk  '; 'zl  '; 'zm  '; 'zn  '; 'zo  ' ;'zp  '; 'zq  '; 'zr  '; 'zs  '; 'zt  ' ;'zu  ' ;'zv  ' ;'zw  ';'zx  '];
increment = 1;
wrong = 0;
right = 0;
r = 0;
rs = zeros(50,25);
%%
cnt = 0;
for y = 1 :1: 50
    xx = 0;
    yy = 0;
    for k = 1 : 1 : 25
        test = strcat(letters(y,:) , num2str(k));
        imageName = imread(strcat('test_images/',test,'.png'));
        z = (feature_extract(~im2bw(imageName)));
        load ('featureout.mat');
        featureout=z;
        save ('featureout.mat','featureout');
        test_c
        if (I==y)
            xx = xx + 1;
            re(y,k) = 1;
        else
            yy = yy + 1;
        end
        cnt = cnt + 1;
        disp(cnt)
    end;
    right = right + xx;
    wrong = wrong + yy;
    ff = [y;xx;yy];
    Result(:, increment) = (ff);
    increment = increment + 1;
end;
%%
Result = Result';
disp('Complete...!!')
%%
