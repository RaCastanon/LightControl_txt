 clc; clear all;

 %%%%%%%%%%%%%%%%%%%%%%%%%%
 %%%%%%%%%%%%%%%%%%%%%%%%
 %%%%%%%
 %%%%%%%matriz generada con el control fuzzy
 %%%%%%%%%%%%%%%%%%%%%%%%%%
 %%%%%%%%%%%%%%%%%%%%%%%%%%
 i=0;
for e=20:-1:-20
    i=i+1;
    j=0;
    for inte=-20:1:20
       j=j+1;
        UT(i,j) = pifuzzy(e,inte);
     end
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%
 %%%%%%%
 %%%%%%%pruebas individuales con el control fuzzy
 %%%%%%%%%%%%%%%%%%%%%%%%%%
 %%%%%%%%%%%%%%%%%%%%%%%%%%

% error=1;
% integralex=-20;
% UT = pifuzzy(error,integralex);
% UT


%%%%%%%%%%%
%%%%%%%%%%%Prueba saturador para calculo del error
%%%%%%%%%%%%%%%%
% 
%     errorv=-40:1:40;  errorv=0.0*errorv;
%     E_integv=-40:1:40; E_integv=0.0*E_integv;
%     aleatoriosv=-40:1:40; alatoriosv=0.0*aleatoriosv;

% e_ant=0;
% i=0;
% for val = -40:1:40
%    %%%%%% vale = RandSimRepeticao(imin,imax,K); 
%    val_e=rand*(80)-40; 
%   
%    i=i+1;
%     [e_ e_i] =error_k(e_ant,val_e);
%     e_ant=e_i;
%     errorv(i)=e_;
%     E_integv(i)=e_i;
%     diferenciav(i)=val_e;
% end



