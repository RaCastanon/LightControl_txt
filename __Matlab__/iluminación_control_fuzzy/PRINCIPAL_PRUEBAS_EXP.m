%%%%%%%%%%%%%%%%%%%%%%%% PROGRAMA PRINCIPAL PARA PROBAR EL CONTROL DE
%%%%%%%%%%%%%%%%%%%%%%%% ILUMINACION
clc; clear all;

%%%%%%%%%% voltage del sensor
volt_sensor = 0.4;

%%%%%%%%%%% constantes
voltmin = 0.05;
voltmax = 0.99;
tolerancia=10;
%%for (volt_sensor=0.05:0.07:voltmax)

pwmloga = pwm_f_exp(volt_sensor,voltmin,voltmax);
pwm_ant = 400  %%%%%poner como global con valor 0
pwm_final = pwmloga
% if(pwm_final>=(pwm_ant-tolerancia))&&(pwm_final<=(pwm_ant+tolerancia))
% disp('no hay cambio en el foco');
% pwm_final 
% else
 pwm_old= mov_suave_exp(pwm_ant, pwm_final);
pwm_ant=pwm_old
% end