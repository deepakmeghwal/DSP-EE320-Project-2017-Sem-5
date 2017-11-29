[y,fs]= audioread('a17.wav');
[P,F,I]= formant(y);
%return P,F, and I
%sound(y) %play the speech file
plot(F,P) %plot formants
p=audioplayer(y,fs);
play(p)