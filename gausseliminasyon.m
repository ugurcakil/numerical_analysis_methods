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
 
P= [ A B ];  
[ row col ] = size( P); 
  for i = 1:row-1 
        if P(i,i) == 0 
            disp(' Gauss eliminasyonu bu denklemler sistemine uygulanamaz!!!') 
           return
        end
     z=P(i,i);  
     P(i,:)= P(i,:)/z;
    for j=i+1:row     
      P(j,:)= P(j,:)- P(j,i)* P(i,:); %köşegenin altını sıfırlama
    end
  end
  z=P(row,row);
 P(row,:)= P(row,:)/z;
 %P(:,col)
 s=0;
for i=row:-1:2 %aranan değerlerin bulunduğu döngü
    for j=i+1:col
        s=s+P(i-1,j-1)* P(j-1,col);
        P(i-1,col)= P(i-1,col)- s; 
        s=0;
    end
end

fprintf('\nÇözüm sistemi:')


for i=1:row
  fprintf('\nx%d= %f',i,P(i,col))   
  end