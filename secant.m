clear all
clc
syms x
f(x) = input('Fonksiyonu yazınız:');

x0=input('\n Araligin başlangıç değerini giriniz : ');
x1=input('\n Aralığın son değerini giriniz : ');
epsilon=input('\n Epsilon '); 
 err=abs(x1-x0);
 i=0;

 if f(x0)*f(x1)>0 
    disp('Enter valid interval !!!')
 else
while err > epsilon
    x2 = x1-( (f(x1)*(x1-x0) ) / (f(x1)-f(x0)) );
     x0=x1;        
     x1=x2;
    err=abs(x1-x0);
    i=i+1;
    fprintf('\n [%f]',x2)
end
fprintf('\nİterasyon sayısı: %f',i)
fprintf('\n The root is %4.3f ',x2);
 end