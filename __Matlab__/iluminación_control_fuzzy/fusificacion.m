% %%%% Fusificación de la variable voltaje de la fotoresistencia
% 
% 
% % %% v voltaje de la fotoresistencia
% %%% vb voltaje bajo
% %% vbm voltaje bajo-medio
% %% vm  voltaje medio
% %% vab voltaje alto-bajo
% %% vaa voltaje alto-alto
clc; clear all;


vb= 1;
vbm=1.5;
vm=2;
vab=2.5;
vaa=3;
%v=3.3;
w=1;
for z=0:0.01:3
% disp('Da el voltaje de la fotoresistencia');
v=z;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Función caracteristica  para la iluminación baja
if(0>=vb)
mu_b=0;
end

if(v<vb)
mu_b=1.0;
end

if(v>=vb)&&(v<=vbm)
mu_b= (vbm-v)/(vbm-vb);
end

if(v>vbm)
mu_b=0;
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Función caracteristica  para la iluminación media
if(v<vb)
mu_m=0;
end

if((v>=vb)&&(v<=vm))
mu_m= (v-vb)/(vm-vb);
end

if((v>vm)&&(v<=vaa))
mu_m= (vaa-v)/(vaa-vm);
end

if(v>vaa)
mu_m=0;
end

%%% Función caracteristica  para la iluminación alta
if(v<vab)
mu_a=0;
end

if((v>=vab)&&(v<=vaa))
mu_a= (v-vab)/(vaa-vab);
end

if(v>vaa)
mu_a=1;
end

mu_b
mu_m
mu_a
% 

% 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% % Regla 1.- if volt sensor es bajo then pwm es alto
% % Regla 2.- if volt sensor es medio then pwm es medio
% % Regla 3.- if volt sensor es alto then pwm es bajo
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%% Limites de la salida

% pwm_b=25;
% pwm_bm=155;
% pwm_m=255;
% pwm_ab=355;
% pwm_a=490;
% alto=512;
% bajo=1;


% pwm_b=10;
% pwm_bm=20;
% pwm_m=255;
% pwm_ab=355;
% pwm_a=490;
% alto=512;
% bajo=1;


pwm_b=25;
pwm_bm=155;
pwm_m=255;
pwm_ab=355;
pwm_a=490;
alto=512;
bajo=1;


%%%% Defusificación encontrado una  aproximación al centroide
sum_a=0;

 for i=alto:-1:pwm_a
     sum_a=sum_a+mu_b*i;
 end

sum_m=0;
 for i=pwm_a:-1:pwm_bm
     sum_m=sum_m+mu_m*i;
 end

sum_b=0;

 for i=pwm_bm:-1:bajo
     sum_b=sum_b+mu_a*i;
 end

 den= mu_b*(alto-pwm_a)+mu_m*(pwm_a-pwm_bm)+mu_a*(pwm_bm-bajo);
 
 
pwm_total= (sum_b+sum_m+sum_a)/den;



if (pwm_total > alto)
pwm_total = alto;
end

if (pwm_total <= 12)
pwm_total = bajo;
end

pwm_vector(w)=round(pwm_total);
w=w+1;
end