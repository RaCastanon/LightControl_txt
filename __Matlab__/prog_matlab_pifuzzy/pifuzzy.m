function [ut] = pifuzzy(e,integrale)
mn=-20;
mn_pn=-15;
pn=-10;
pn_z=-5;
z=0;
z_pp=5;
pp=10;
pp_mp=15;
mp=20;
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

%%%%%%%%%
%%%%%%%%%Funciones caracteristicas  para el error
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%% Función caracteristica  para error MN (muy negativo)

if(e<mn)
mue_MN=0;
end
if((e>=mn)&&(e<=pn))
mue_MN =(pn-e)/(pn-mn);
end

if((e>pn))
mue_MN = 0;
end


%%% Función caracteristica  para error PN (poco negativo)

if(e<mn)
mue_PN=0;
end

if((e>=mn)&&(e<=pn))
mue_PN =(e-mn)/(pn-mn);
end

if((e>pn)&&(e<=z))
mue_PN =(z-e)/(z-pn);
end

if((e>=z))
mue_PN =0;
end

%%% Función caracteristica  para error Z (cero)
if(e<pn)
mue_Z=0;
end

if((e>=pn)&&(e<=z))
mue_Z =(e-pn)/(z-pn);
end

if((e>z)&&(e<=pp))
mue_Z =(pp-e)/(pp-z);
end

if((e>=pp))
mue_Z =0;
end

%%% Función caracteristica  para error PP (poco positivo)
if(e<z)
mue_PP=0;
end

if((e>=z)&&(e<=pp))
mue_PP =(e-z)/(pp-z);
end

if((e>pp)&&(e<=mp))
mue_PP =(mp-e)/(mp-pp);
end

if((e>=mp))
mue_PP =0;
end

%%% Función caracteristica  para error MP (muy positivo)
if(e<pp)
mue_MP=0;
end

if((e>=pp)&&(e<=mp))
mue_MP =(e-pp)/(mp-pp);
end

if((e>mp))
mue_MP =0;
end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Funciones características para error integral


if(integrale<mn)
mui_MN=0;
end
if((integrale>=mn)&&(integrale<=pn))
mui_MN =(pn-integrale)/(pn-mn);
end

if((integrale>pn))
mui_MN = 0;
end


%%% Función caracteristica  para error PN (poco negativo)

if(integrale<mn)
mui_PN=0;
end

if((integrale>=mn)&&(integrale<=pn))
mui_PN =(integrale-mn)/(pn-mn);
end

if((integrale>pn)&&(integrale<=z))
mui_PN =(z-integrale)/(z-pn);
end

if((integrale>=z))
mui_PN =0;
end

%%% Función caracteristica  para error Z (cero)
if(integrale<pn)
mui_Z=0;
end

if((integrale>=pn)&&(integrale<=z))
mui_Z =(integrale-pn)/(z-pn);
end

if((integrale>z)&&(integrale<=pp))
mui_Z =(pp-integrale)/(pp-z);
end

if((integrale>=pp))
mui_Z =0;
end

%%% Función caracteristica  para error PP (poco positivo)
if(integrale<z)
mui_PP=0;
end

if((integrale>=z)&&(integrale<=pp))
mui_PP =(integrale-z)/(pp-z);
end

if((integrale>pp)&&(integrale<=mp))
mui_PP =(mp-integrale)/(mp-pp);
end

if((integrale>=mp))
mui_PP =0;
end

%%% Función caracteristica  para error MP (muy positivo)
if(integrale<pp)
mui_MP=0;
end

if((integrale>=pp)&&(integrale<=mp))
mui_MP =(integrale-pp)/(mp-pp);
end

if((integrale>mp))
mui_MP =0;
end

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% mue_MN
% mue_PN
% mue_Z
% mue_PP
% mue_MP
% 
% 
% mui_MN
% mui_PN
% mui_Z
% mui_PP
% mui_MP

% % % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % % % 
% % % % 
% % % %  IMPLEMENTACIÓN DE LAS 24 REGLAS
% % % % 
% % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%1
% disp('regla 1');
mu_u_a1=min(mue_MN,mui_MN);

%2
% disp('regla 2');
mu_u_a2=min(mue_MN,mui_PN);

%3
% disp('regla 3');
mu_u_a3=min(mue_MN,mui_Z);

%4
% disp('regla 4');
mu_u_a4=min(mue_MN,mui_PP);

%5
% disp('regla 5');
mu_u_a5=min(mue_MN,mui_MP);

%6
% disp('regla 6');
mu_u_ma1=min(mue_PN,mui_MN);

%7
% disp('regla 7');
mu_u_ma2=min(mue_PN,mui_PN);

%8
% disp('regla 8');
mu_u_ma3=min(mue_PN,mui_Z);

%9
% disp('regla 9');
mu_u_ma4=min(mue_PN,mui_PP);

%10
% disp('regla 10');
mu_u_ma5=min(mue_PN,mui_MP);

%11
% disp('regla 11');
mu_u_E1=min(mue_MP,mui_MN);

%12
% disp('regla 12');
mu_u_E2=min(mue_MP,mui_PN);

%13
% disp('regla 13');
mu_u_E3=min(mue_MP,mui_Z);

%14
% disp('regla 14');
mu_u_E4=min(mue_MP,mui_PP);

%15
% disp('regla 15');
mu_u_E5=min(mue_MP,mui_MP);

%16
% disp('regla 16');
mu_u_a6=min(mue_Z,mui_MN);

%17
% disp('regla 17');
mu_u_ma6=min(mue_Z,mui_PN);

%18
% disp('regla 18');
mu_u_mE1=min(mue_Z,mui_PP);

%19
% disp('regla 19');
mu_u_E6=min(mue_Z,mui_MP);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%20
% disp('regla 20');
mu_u_mE2=min(mue_PP,mui_MN);

%21
% disp('regla 21');
mu_u_mE3=min(mue_PP,mui_PN);

%22
% disp('regla 22');
mu_u_mE4=min(mue_PP,mui_Z);

%23
% disp('regla 23');
mu_u_mE5=min(mue_PP,mui_PP);

%24
% disp('regla 24')
mu_u_mE6=min(mue_PP,mui_MP);
% % %%%%%%%%%OBTENCIÓN DE LAS FUNCIONES CARACTEÍSTICAS PARA LA SALIDA%%%%%%%%%%%%%%%
  
% 
% %%%%%%%%%%%%%%%%%%%
mu_A=(mu_u_a1^2+ mu_u_a2^2+mu_u_a3^2+mu_u_a4^2+mu_u_a5^2+mu_u_a6^2)^0.5;
mu_MA=(mu_u_ma1^2+ mu_u_ma2^2+mu_u_ma3^2+mu_u_ma4^2+mu_u_ma5^2+mu_u_ma6^2)^0.5;
mu_E=(mu_u_E1^2+ mu_u_E2^2+mu_u_E3^2+mu_u_E4^2+mu_u_E5^2+mu_u_E6^2)^0.5;
mu_ME=(mu_u_mE1^2+ mu_u_mE2^2+mu_u_mE3^2+mu_u_mE4^2+mu_u_mE5^2+mu_u_mE6^2)^0.5;
% % % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% mu_A
% mu_MA
% mu_ME
% mu_E

% % % % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % % % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % % % %DEFUSIFICACION
% % % % % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % % % %%%%% Valores de las fuciones A, MA, NADA, ME, E
% % % % % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % % 
% %%% función A
sA= -1.0;
sAde= -0.9;

%%% función MA
sAMA= -0.5;
sMA= -0.2;

%%% función NADA
sN=0;

%%% función ME
sME=0.2;
sMEE=0.5;

%%% función E
sEiz=0.9;
sE=1;
% 
% % % % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % % % %%%% Defusificación encontrado una  aproximación al centroide
% 
inc=0.01;
ini=-1;
final=1;
 V_A = ini:inc:final;   V_A =(0.0)*V_A;
 V_Aden = ini:inc:final;   V_Aden =(0.0)*V_Aden;
 
 V_MA = ini:inc:final;   V_MA =(0.0)*V_MA;
 V_MA_den = ini:inc:final;  V_MA_den =(0.0)*V_MA_den;
 
 V_ME = ini:inc:final;   V_ME =(0.0)*V_ME;
 V_ME_den= ini:inc:final;   V_ME_den =(0.0)*V_ME_den;
 
 V_E = ini:inc:final;   V_E =(0.0)*V_E;
 V_E_den = ini:inc:final;   V_E_den =(0.0)*V_E_den;
 
 
 V_N = ini:inc:final;   V_N =(0.0)*V_N;
% 
% % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%% SALIDA APAGADO (A)
% % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

if(mu_A==1)
       j=1;
             for i=sA:inc:sAde
                 V_A(j)= mu_A*i;
                 V_Aden(j) = mu_A;
                 j=j+1;
             end
    inf=sAde+inc;
               for i=inf:inc:sAMA
                      V_A(j)= i*(sAMA-i)/(sAMA-sAde);
                      V_Aden(j) =(sAMA-i)/(sAMA-sAde);
                      j=j+1;
               end
 else
   
         j=1;
              x=sAMA-mu_A*(sAMA-sAde);
              
              for i=sA:inc:x
                  i;
                        V_A(j)= mu_A*i;
                        V_Aden(j) = mu_A;
                        j=j+1;
              end
              
             
           
             for i=x:inc:sAMA
                 i;  
                 V_A(j)= i*(sAMA-i)/(sAMA-sAde);
                       V_Aden(j) =(sAMA-i)/(sAMA-sAde);
                        j=j+1;
              end  
    
end

j;

V_A;
sum(V_A);
sum(V_Aden);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%% SALIDA MEDIO APAGADO (MA)%%%%%%%%%%%%%%%%%%%%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
       j=1;
         xMA=sAMA-mu_MA*(sAMA-sMA);  %%%-0.35
        ini=sAMA; %%%-0.49
          %%%% triangulo
        for i=ini:inc:xMA
             i;
                V_MA(j)= ((sAMA-i)/(sAMA-sMA))*i;
                V_MA_den(j) =((sAMA-i)/(sAMA-sMA));
                j=j+1;
         end
         
         ini=xMA;  %%%%-0.36
             for i=ini:inc:sMA
                 i;
                 V_MA(j)= mu_MA*i;
                  V_MA_den(j) =mu_MA;
                 j=j+1;
             end
                   
             i;
             j;
             V_MA;
             V_MA_den;
             sum(V_MA);
% % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % %%%% SALIDA Medio Encendido (ME)
% % %%%%
x= sME+(sMEE-sME)*mu_ME;
j=1;
for i=sME:inc:x
    i;
  V_ME(j)= ((i-sME)/(sMEE-sME))*i;
 V_ME_den(j) =((i-sME)/(sMEE-sME));
  j=j+1;
end
for i=x:inc:sMEE
    i;
  V_ME(j)= mu_ME*i;
 V_ME_den(j) =mu_ME;
  j=j+1;
end

V_ME;
V_ME_den;

% % % % %%%%%%%%%%%%%%%%%%%%%%%%%
% % % % %%%%%%%%%%%%%%%%%%%%%%%%%
% % % % 
% % % % 
% % %%%% SALIDA ENCENDIDO (E)
% % %%%%
x= sMEE+(sEiz-sMEE)*mu_E;
for i=sMEE:inc:x
  i;
    V_E(j)= ((i-sMEE)/(sEiz-sMEE))*i;
    V_E_den(j)=((i-sMEE)/(sEiz-sMEE));
    j=j+1;
end
% 
for i=x:inc:sE
  V_E(j)= mu_E*i;
  V_E_den(j)=mu_E;
  j=j+1;
end

% 
% % % 
% % % %%%%%%%%%%%%%%%%
% % % %%%%%%%%
% % % 
% z=sum(V_A)
% l=sum(V_MA)
% q=sum(V_ME)
% tt=sum(V_E)

denominadorCHK= mu_A+mu_MA+mu_E+mu_ME;
if(denominadorCHK==0)
ut=0;
else
denominadorA= sum(V_Aden);
denominadorMA= sum(V_MA_den);
denominadorME=sum(V_ME_den);
denominadorE=sum(V_E_den);
numerador= sum(V_A)+sum(V_MA)+sum(V_ME)+sum(V_E);
ut=numerador/(denominadorA+denominadorMA+denominadorME+denominadorE);
end



