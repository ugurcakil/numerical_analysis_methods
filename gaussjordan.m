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
 


for i = 1:row-1 % matrisin alt üçgenini  sıfırlama.
        if P(i,i) == 0 
            disp(' Gauss jordan eliminasyon metodu uygulanamaz!!!')
           return
        end
        z=P(i,i);
     P(i,:)= P(i,:)/z;
    for j=i+1:row     
      P(j,:)= P(j,:)- P(j,i)* P(i,:);
    end
  end
 z=P(row,row);  
 P(row,:)= P(row,:)/z;
for i=row:-1:2   % matrisin üst üçgen sıfırlama.
    for j=i-1:-1:1    
      P(j,:)= P(j,:)- P(j,i)* P(i,:)
    end
end 
disp(' Çözüm sistemi:')


for i=1:a;
fprintf('\n x%d=%f',i,P(i,col))
end

