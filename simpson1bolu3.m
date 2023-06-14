clear all
clc


syms x
syms a
syms b
syms n

f(x) = input('Fonksiyonu yazınız:');
a = input('İntegralin alt sınırı');
b = input('İntegralin üst sınırı');
n = input('Fonksiyonu kaç adet yamuğa bölmek istersin?');
y=0;
z=((b-a)/n);
for i =(a+z):z:b
    c=i-z;
    tmp= (z)*((f(c)+4*f((i+c)/2)+f(i))/6);
    
    
    
   y=y+tmp;
    
end
disp('İntegralin Sonucu:')
fprintf('\n %f',y)