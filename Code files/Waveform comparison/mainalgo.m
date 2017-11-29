results=zeros(2,1);
diff = zeros(84,1);
formantdiff = zeros(2,1);
[y7,fs7] = audioread('a41.wav');

[t7,f07,avgF07] = pitch(y7,fs7);

[P7,F7,I7] = formant(y7);

plot(t7,f07)
avgF7 = avgF07
p=audioplayer(y7,fs7);
play(p)
pause(3)

% file name base on index,i
for i=1:84
if i<10
filename = sprintf('a%i.wav',i);
else
filename = sprintf('a%i.wav',i);
end
[y,fs]= audioread(filename);

[t,f0,avgF0] = pitch(y,fs);

plot(t,f0)
avgF0(i) = avgF0;
diff(i,1) = norm(avgF0(i)-avgF7);
 
 
i
end
[Y,H]=sort(diff)
for j=1:2
p=H(j)
if p<10
filename = sprintf('a%i.wav',p);
else
filename = sprintf('a%i.wav',p);
end
filename
[y,fs] = audioread(filename);
[P,F,I]=formant(y);

%sound(y)
%plot(F,p)
pause(3)
formantdiff(j,1) = norm(I7-I);

end
[Y1,H1] = sort(formantdiff)
for k=1:2
results(k,1)=H(H1(k));

end
H
H1
results


