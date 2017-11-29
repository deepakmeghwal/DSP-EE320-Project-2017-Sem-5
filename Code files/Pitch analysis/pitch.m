%Function
%extract pitch information speech file


function [t,f0,avgF0] =pitch(y,fs)
% get the number of samples
ns= length(y);
%error checking on the signal level, remove the DC bias
mu= mean(y);
y=y-mu;

fRate = floor(120*fs/1000);
updRate= floor(110*fs/1000);
nFrames= floor(ns/updRate)-1;
% the pitch contour is then a 1 x nFrames vector
f0=zeros(1,nFrames);
f01=zeros(1,nFrames);
% get the pitch from each segmented frame
k=1;
avgF0=0;
m=1;
for i=1:nFrames
xseg=y(k:k+fRate-1);
f01(i)= pitchacorr(fRate,fs,xseg);
 %do some median filtering ,less affected by noise
if i>2 & nFrames>3
z=f01(i-2:i);
md= median(z);
f0(i-2)=md;
if md>0
avgF0= avgF0+md;
m=m+1;
end
elseif nFrames<=3
f0(i)=a;
avgF0=avgF0+a;
m=m+1;
end
k=k+updRate;
end;
t=1:nFrames;
t=20*t;
if m==1
avgF0=0;
else
avgF0=avgF0/(m-1);
end

     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     