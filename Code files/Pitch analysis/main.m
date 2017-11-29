%code for pitch analysis of a wav file
[y,fs] = audioread('a2.wav');%read in the wav file
[t,f0,avgF0] = pitch(y,fs);%call the pitch.m routine
plot(t,f0)%plot pitch contour verus time frame
avgF0%display the average pitch
%sound(y)%playback the sound file
p=audioplayer(y,fs);
play(p)

