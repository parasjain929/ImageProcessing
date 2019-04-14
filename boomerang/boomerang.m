v=VideoReader('1.mp4');
k=boom(v,0,2,2);
newv=VideoWriter('booom.avi');
open(newv);
for i =1:size(k,4)
    writeVideo(newv,k(:,:,:,i));
end
close(newv);

