function [pwm_previo]= mov_suave(pwm_ant, pwm_final)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
%pwmlog = [1	28	97	145	181	210	234	255	273	290	305	318	331	342	353	363	372	381	389	397	404	412	418	425	431	437	443	448	454	459	464	469	474	478	482	487	491	495	499	503	507	510	512];
pwmlog =[512,461,414,372,334,299,268,240,214,191,170,151,134,119,105,92,80,70,61,52,44,37,31,25,20,16,11,8,4,1];

[ren col] = size(pwmlog);
col
disp('Here');
if(pwm_ant<=pwm_final)
disp('pwm_ant<=pwm_final');
    for i=1:col
  
       if(pwmlog(i)>=pwm_ant)    
        
           indice =i;
       break;
       end
  end       
else
disp('pwm_ant>=pwm_final');
for i=col:-1:1
  
   if(pwmlog(i)<pwm_ant)    
       indice =i+1;
       break;
       end    
end
end
indice

if(pwm_ant<=pwm_final)
disp('pwm_ant<=pwm_final manda al foco');
    for h=indice:col
       if(pwmlog(h)<=(pwm_final+5))    
        pwmenv =pwmlog(h)
       end
    end 
     pwm_previo=pwmenv;
else
disp('pwm_ant>=pwm_final manda al foco');
for h=indice:-1:1
    if(pwmlog(h)>(pwm_final))  
    pwmenv=pwmlog(h-1)
   end    
end
pwm_previo=pwmenv;
end




end





