clear all
clc

syms x

f(x) = input('Fonksiyonu yazınız:');
fd(x) = input('Fonksiyonun türevini yazınız:');
x0=input('\n Başlangıç değerini giriniz '); 
epsilon=input('\n Epsilon ');




 x1=x0-f(x0)/fd(x0);
 fprintf('\n [%f]',x1)
 err=abs(x1-x0);
 i=1;
while err > epsilon
    i=i+1;
    x1=x0-f(x0)/fd(x0);
    fprintf('\n [%f]',x1)
    err=abs(x1-x0);
    x0=x1;
    
end

fprintf('\nİterasyon sayısı: %f',i)
fprintf('\n Kök %4.3f ',x0)
    