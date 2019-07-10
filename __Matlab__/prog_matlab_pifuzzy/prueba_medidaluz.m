clc;
clear all;

% img=imread('baboon.bmp');
img=imread('Lighthouse.bmp');
%imshow(img);
opcion=5;
w=20;
[lu_z imgk] = medidaluz(img,opcion,w);
imshow(imgk);

