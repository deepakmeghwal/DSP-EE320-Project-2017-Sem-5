
function[P,F,I]=formant(y)
%calculate the PSD using Yule-Walker's mathod
order=12;
P=pyulear(y,order,[]);
P=10*log10(P);
F=0:1/128:1;


[Pm,I]=pickmax(P);
I=I/128;