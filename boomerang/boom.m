function [k] =boom(v,starttime,endtime,fast)
t=read(v);
sf=starttime*v.FrameRate;
ef=endtime*v.FrameRate;
t=t(:,:,:,sf:fast:ef);
t1=t(:,:,:,end:-1:1);
k=uint8(zeros(size(t,1),size(t,2),size(t,3),6*size(t,4)));
k(:,:,:,1:size(t,4))=t;
k(:,:,:,size(t,4)+1:2*size(t,4))=t1;
k(:,:,:,2*size(t,4)+1:3*size(t,4))=t;
k(:,:,:,3*size(t,4)+1:4*size(t,4))=t1;
k(:,:,:,4*size(t,4)+1:5*size(t,4))=t;
k(:,:,:,5*size(t,4)+1:6*size(t,4))=t1;
end