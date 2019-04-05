f=uint8(zeros(600,1050,3));
f(:,:,:)=255;
f(:,:,1:2)=0;
%sun
for i=1:100
    for j=530:670
        if sqrt(power(i-150, 2)+ power(j-600, 2))>=90 
            if sqrt(power(i-150, 2)+ power(j-600, 2))<=100 
              f(i,j,:)=255;  
            end
        end
    end 
end
%sun end

%mountain start
for i=1:150
  for j=1:150
    if(i+j==150)
    f(i:i+5,j:j+5,:)=255;
  endif
endfor
endfor

for i=1:150
  for j=150:300
    if((i-150)==(j-300))
    f(i:i+5,j:j+5,:)=255;
  endif
endfor
endfor

for i=1:150
  for j=300:450
    if(i+j==450)
    f(i:i+5,j:j+5,:)=255;
  endif
endfor
endfor

for i=1:150
  for j=450:600
    if((i-150)==(j-600))
    f(i:i+5,j:j+5,:)=255;
  endif
endfor
endfor

for i=1:150
  for j=600:750
    if(i+j==750)
    f(i:i+5,j:j+5,:)=255;
  endif
endfor
endfor

for i=1:150
  for j=750:900
    if((i-150)==(j-900))
    f(i:i+5,j:j+5,:)=255;
  endif
endfor
endfor

for i=1:150
  for j=900:1050
    if(i+j==1050)
    f(i:i+5,j:j+5,:)=255;
  endif
endfor
endfor
f(150:155,:,:)=255;
%mountain end

%hut
for i=200:300
  for j=700:800
    if(i+j==1000)
    f(i:i+5,j:j+5,:)=255;
  endif
endfor
endfor

for i=200:300
  for j=800:900
    if((i-300)==(j-900))
    f(i:i+5,j:j+5,:)=255;
  endif
endfor
endfor
f(300:305,700:900,:)=255;
f(305:500,700:705,:)=255;
f(305:500,895:900,:)=255;
f(500:505,700:900,:)=255;
%hut end

%river
for i=100:400
    for j=0:150
        if sqrt(power(i-215, 2)+ power(j-150, 2))>=65
            if sqrt(power(i-215, 2)+ power(j-150, 2))<=75 
              f(i,j,:)=255;  
            end
        end
    end 
end
for i=200:450
    for j=150:300
        if sqrt(power(i-360, 2)+ power(j-150, 2))>=65
            if sqrt(power(i-360, 2)+ power(j-150, 2))<=75 
              f(i,j,:)=255;  
            end
        end
    end 
end

for i=300:600
    for j=0:150
        if sqrt(power(i-505, 2)+ power(j-150, 2))>=65
            if sqrt(power(i-505, 2)+ power(j-150, 2))<=75 
              f(i,j,:)=255;  
            end
        end
    end 
end

for i=100:400
    for j=300:450
        if sqrt(power(i-215, 2)+ power(j-450, 2))>=65
            if sqrt(power(i-215, 2)+ power(j-450, 2))<=75 
              f(i,j,:)=255;  
            end
        end
    end 
end
for i=200:450
    for j=450:600
        if sqrt(power(i-360, 2)+ power(j-450, 2))>=65
            if sqrt(power(i-360, 2)+ power(j-450, 2))<=75 
              f(i,j,:)=255;  
            end
        end
    end 
end

for i=300:600
    for j=300:450
        if sqrt(power(i-505, 2)+ power(j-450, 2))>=65
            if sqrt(power(i-505, 2)+ power(j-450, 2))<=75 
              f(i,j,:)=255;  
            end
        end
    end 
end



imshow(f);