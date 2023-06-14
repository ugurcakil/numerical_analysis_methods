clear all
clc

syms x

f(x) = input('Fonksiyonu yazınız:  ');
x0=input('\n Başlangıç değerini giriniz:   '); 
delta=input('\n Delta:  ');
epsilon=input('\n Epsilon:    ');



i=1;

while (1);
    i=i+1;
    x1=x0+delta;
    f(x0);
    f(x1);
     
   if f(x1)*f(x0)>0
       x0=x1;
   else
        fprintf('\n x0=  %f  \n x1=  %f   \n delta=  %f',x0,x1,delta)
   if delta<epsilon
       
       break
   else
       delta=delta/2;
   end
   end
   
end
1
fprintf ('\nkök : %f',x0)