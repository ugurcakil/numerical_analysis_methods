clc;
close all;



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
 

 
 X=[0;0;0];
C=[0;0;0]; 
Err=[0;0;0]; 
P= [ A B ]; 
[ row, col ] = size(P);


  for i = 1:row 
        if 2*abs(A(i,i))<= (sum(abs(A(i,:)))-abs(A(i,i))) %köşegende ki sayı en büyük olmalı
            disp('Denklem sistemini gözden geçirin!!!') 
           return
        end
  end
  
  
  
  epsilon=input('\n Epsilon ');
  merr=1;
  z=1;
  
while merr>eps 
    
    for i=1:row       
       z=z+1;
        fprintf('\nİterasyon  %d',z)
       C(i,1)=(1/P(i,i))*(P(i,col)-sum(A(i,:)*X(:,1))+A(i,i)*X(i,1))
       Err(i,1)= abs(C(i,1)-X(i,1));
       X(:,1)=C(:,1);
       
    end 
   
    merr=max(Err);
end
fprintf('\nToplam İterasyon sayısı: %d \n',z)
disp(' Çözüm sistemi:')


for i=1:a;
fprintf('\n x%d=%f',i,X(i,1))
end