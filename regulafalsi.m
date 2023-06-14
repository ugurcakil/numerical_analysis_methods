clc    
syms x;      
func = input('Fonksiyonu yazınız:');

x0=input('Araligin başlangıç değerini giriniz :'); 
x1=input('Aralığın son değerini giriniz : ');
epsilon=input('Epsilon :');

fx0 = subs(func,x,x0);
fx1 = subs(func,x,x1);


i=0;
 
 if fx0*fx1>0 
    disp('Lütfen uygun bir aralık giriniz !!!')
 end
 
 if fx0*fx1<0
     
 while (1)
    x2=((x0*fx1)-(x1*fx0))/(fx1-fx0);
    
 
    fx2 = subs(func,x,x2);
    
   
    err=abs(fx2);
    
   i=i+1;
   
    

     
    if fx1*fx2<0
        
        x0=x2; 
        x1=x1;
        fprintf('\n[%f,%f]',x0,x1) 
    end
    if fx1*fx2>0
         x0=x0;
         x1=x2;
         fprintf('\n[%f,%f]',x0,x1)
    
    end
    
     if (err < epsilon)  
         
        break
    end

   
 end
 fprintf('\nİterasyon sayısı: %f',i)
 fprintf('\n Kök %3.4f ',x2);
 end