flag=uint8(zeros(300,600,3));
flag(:,:,:)=255;

%saffron color
flag(1:100,:,2)=169;
flag(1:100,:,3)=0;

%green color
flag(200:300,:,2)=255;
flag(200:300,:,[1,3])=0;

%circle
for i=1:300 
    for j=1:600 
        if sqrt(power(i-150, 2)+ power(j-300, 2))>=45 
            if sqrt(power(i-150, 2)+ power(j-300, 2))<=50 
                flag(i, j, 1:2)=0; 
            end
        end
    end 
end


%spokes
r=300;c=600;
for k=0:12
  for i=((r/2)-(r/6)):((r/2)+(r/6))
    for j=(c/2)-(r/6):(c/2)+(r/6)
      if ((j-(c/2))-(i-(r/2))*tand(15*k))>=0 && ((j-(c/2))-(i-(r/2))*tand(15*k))<=3
         if(sqrt((power((i-(r/2)),2)+power((j-(c/2)),2)))<=r/6)
             flag(i,j,1:2)=0;
endif
endif
endfor
endfor
endfor
imshow(flag);
