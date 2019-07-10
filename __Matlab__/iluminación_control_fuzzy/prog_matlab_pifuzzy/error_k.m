function [e_ e_integ] = error_k(e_ant,e_x)

saturacion = 20;

   
    if(e_x>saturacion)
            e_ = saturacion/10;
    end
    
    if(e_x<(-1.0)*saturacion)
    e_ = (-1.0)*saturacion/10;
    end
    
     if (e_x<saturacion)&&(e_x>(-1.0)*saturacion)
     e_ = e_x;
     end 
    

e_integ= e_x + e_ant;
% 
if(e_integ>saturacion)
 e_integ = saturacion/10;   
end

if(e_integ<(-1)*saturacion)
   e_integ = (-1)*saturacion/10; 
end


