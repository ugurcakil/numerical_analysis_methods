clc
clear all


syms a
syms b

a = input('A matrisinin satır sayısını giriniz:  ');
b = input('A matrisinin sütun sayısını giriniz:  ');


 
 for i=1:a
     for j=1:b

         A(i,j) = input(' A matrisinin elemanlarını sırayla giriniz:  ');
     end
 end
 
 for i=1:b
     for j=1:1
         B(i,j) = input(' B matrisinin elemanlarını sırayla giriniz:  ');
     end
 end

 
 
 x = ones(a,a);
 A_det = det(A);
 for i = 1:b
    C = A;
    C(:,i) = B;
    x(i,1) = det(C)/A_det;
 end
 
 fprintf('\nSistemin çözümü\n')
 for i=1:a
 fprintf('x%d= %f \n',i,x(i,1))
 end

 