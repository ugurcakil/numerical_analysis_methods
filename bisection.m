clc    
syms x;      
func = input('Fonksiyonu yazınız:');      
xl = input('Araligin başlangıç değerini giriniz :');   
xu = input('Aralığın son değerini giriniz :');            
epsilon=input ('Epsilon :');   
 
fxl=subs(func,x,xl);            
fxu=subs(func,x,xu);            
 

i=0;       
while (1)   
    
   
   
    xr=(xl+xu)/2;        
    err=abs(xl-xr);  
       
    if (err<epsilon) 
       
           break
     end
   
    
    fxr=subs(func,x,xr);    
    fxl=subs(func,x,xl);    
    check=fxr*fxl; 
    
    if(check<0) 
       
       
        xu=xr;  
        xl=xl;
        fprintf('\n[%f,%f]',xl,xu)
    end
    if (check>0) 
        
        xu=xu;
        xl=xr ; 
        fprintf('\n[%f,%f]',xl,xu)
    end
   
     i=i+1;  
         
end
    fprintf('\nİterasyon sayısı: %f',i)

    fprintf('\nKök=%f',xr)