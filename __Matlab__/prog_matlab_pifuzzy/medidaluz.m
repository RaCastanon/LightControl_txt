function [luz_c] = medidaluz(imgx,opcion,sw)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

[ren col] = size(imgx);
imgk=imgx;
%%%%%%%%%%%%%%%
y1=ren/4;
col1=col/4;
%%%%%%%%%%%%%%%
y2=ren/4;
col2=col*3/4;
%%%%%%%%%%%%%%%
y3=ren*3/4;
col3=col/4;
%%%%%%%%%%%%%%%
y4= ren/2+ren/4;
col4= col/2+col/4;
%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%
y5= ren/2;
col5= col/2;
%%%%%%%%%%%%%%%

den=1;

switch opcion
      case 1
          disp('caso 1');
    
        for i=y1-sw:y1+sw
          for j=col1-sw:col1+sw
              imgk(i,j)=0;
              v(den)=imgx(i,j);
          den=den+1;    
          end
                end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%          
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
       
    case 2
          disp('caso 2');
        for i=y2-sw:y2+sw
          for j=col2-sw:col2+sw
              imgk(i,j)=0;
               v(den)=imgx(i,j);
          den=den+1;    
          end
        end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%          
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   
    case 3
          disp('caso 3');
   
        for i=y3-sw:y3+sw
          for j=col3-sw:col3+sw
              imgk(i,j)=0;
               v(den)=imgx(i,j);
          den=den+1;    
          end
        end
          
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%          
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%                 
      case 4
          disp('caso 4');   
        for i=y4-sw:y4+sw
          for j=col4-sw:col4+sw
              imgk(i,j)=0;
               v(den)=imgx(i,j);
               den=den+1;    
          end
        end
          
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%          
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    otherwise
    disp('caso 5');  
        for i=y5-sw:y5+sw
          for j=col5-sw:col5+sw
              imgk(i,j)=0;
               v(den)=imgx(i,j);
          den=den+1;    
          end
        end

end

luz_c=sum(v)/den;
end