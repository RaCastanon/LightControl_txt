function [pwmlog] = pwm_f_exp(volt_sensor,voltmin,voltmax)
%%% volt_sensor   voltaje del sensor entre 0-3v o como se defina

%%% voltmin  se considero 0.02 y para todo volt_sensor<voltmin, el pwm es
%%% 512

%%% voltmax  se considero 2.9 y para todo volt_sensor>voltmax, el pwm es
%%% 1
    pwm= round(597.654*exp(-volt_sensor)-28.76);

if(volt_sensor>voltmax)||(pwm<=1.0)
    pwm=1.0;
end

if(volt_sensor<=voltmin)||(pwm>=512.0)
pwm=512.0;
end

pwmlog=round(pwm);

end

