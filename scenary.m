f=uint8(zeros(600,1200,3));
f(1:150,:,1)=153;
f(1:150,:,2)=204;
f(1:150,:,3)=255;
f(150:600,:,3)=0;
f(150:600,:,2)=201;
f(150:600,:,1)=0;


%sun
for i=1:150
    for j=530:670
        
            if sqrt(power(i-150, 2)+ power(j-600, 2))<=100 
              f(i,j,1)=255;
              f(i,j,2)=128;
              f(i,j,3)=0;
            end
        
    end 
end
%sun end

%mountain start
for i=1:150
  for j=1:150
    if(i+j==150)
    f(i:i+5,j:j+5,:)=255;
    end
    end
    end

for i=1:150
  for j=150:300
    if((i-150)==(j-300))
    f(i:i+5,j:j+5,:)=255;
    end
  end
  end

for i=1:150
  for j=300:450
    if(i+j==450)
    f(i:i+5,j:j+5,:)=255;
    end
    end
    end

for i=1:150
  for j=450:600
    if((i-150)==(j-600))
    f(i:i+5,j:j+5,:)=255;
    end
    end
    end

for i=1:150
  for j=600:750
    if(i+j==750)
    f(i:i+5,j:j+5,:)=255;
    end
    end
    end

for i=1:150
  for j=750:900
    if((i-150)==(j-900))
    f(i:i+5,j:j+5,:)=255;
    end
    end
    end

for i=1:150
  for j=900:1050
    if(i+j==1050)
    f(i:i+5,j:j+5,:)=255;
    end
  end
end
f(150:155,:,:)=255;
%mountain end

%hut
for i=200:300
  for j=800:900
    if(i+j==1000)
    f(i:i+5,j:j+5,:)=255;
    end
    end
    end

for i=200:300
  for j=900:1000
    if((i-300)==(j-900))
               f(i:i+5,j:j+5,:)=255;
    end
  end
end
f(300:500,800:1000,:)=192;
f(400:500,850:950,1)=165;
f(400:500,850:950,2:3)=42;

%hut end

% %river
% for i=100:400
%     for j=0:150
%         if sqrt(power(i-215, 2)+ power(j-150, 2))>=65
%             if sqrt(power(i-215, 2)+ power(j-150, 2))<=75 
%               f(i,j,:)=255;  
%             end
%         end
%     end 
% end
% for i=200:450
%     for j=150:300
%         if sqrt(power(i-360, 2)+ power(j-150, 2))>=65
%             if sqrt(power(i-360, 2)+ power(j-150, 2))<=75 
%               f(i,j,:)=255;  
%             end
%         end
%     end 
% end
% 
% for i=300:600
%     for j=0:150
%         if sqrt(power(i-505, 2)+ power(j-150, 2))>=65
%             if sqrt(power(i-505, 2)+ power(j-150, 2))<=75 
%               f(i,j,:)=255;  
%             end
%         end
%     end 
% end
% 
% for i=100:400
%     for j=300:450
%         if sqrt(power(i-215, 2)+ power(j-450, 2))>=65
%             if sqrt(power(i-215, 2)+ power(j-450, 2))<=75 
%               f(i,j,:)=255;  
%             end
%         end
%     end 
% end
% for i=200:450
%     for j=450:600
%         if sqrt(power(i-360, 2)+ power(j-450, 2))>=65
%             if sqrt(power(i-360, 2)+ power(j-450, 2))<=75 
%               f(i,j,:)=255;  
%             end
%         end
%     end 
% end
% 
% for i=300:600
%     for j=300:450
%         if sqrt(power(i-505, 2)+ power(j-450, 2))>=65
%             if sqrt(power(i-505, 2)+ power(j-450, 2))<=75 
%               f(i,j,:)=255;  
%             end
%         end
%     end 
% end
k=0;
for i=150:-1:1
       f(i,3+k:300-k,1)=165;
       f(i,3+k:300-k,2:3)=42;
       k=k+1;
end
k=0;
 for i=150:-1:1
       f(i,303+k:600-k,1)=165;
       f(i,303+k:600-k,2:3)=42;
       k=k+1;
 end
 k=0;
 for i=150:-1:1
       f(i,603+k:900-k,1)=165;
       f(i,603+k:900-k,2:3)=42;
       k=k+1;
 end
 k=0;
 for i=150:-1:1
       f(i,903+k:1200-k,1)=165;
       f(i,903+k:1200-k,2:3)=42;
       k=k+1;
 end
 k=0;
 for i=300:-1:150
       f(i,803+k:1000-k,1)=255;
       f(i,803+k:1000-k,2:3)=153;
       k=k+1;
 end
 k=0;
for i=600:-1:1
       f(i,1+k:450,3)=255;
       k=k+1;
end
 k=0;
for i=150:600
       f(i,450:900-k,3)=255;
       k=k+1;
end
 imshow(f);