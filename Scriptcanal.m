%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% affichage mots plus canal %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all;
close all;

N = 4;
nb = 100;
p0 = 0.5;
X=50;
f = 0:0.5/X:0.5;
tmp = [0,0];
wer = zeros(1,X+1);
ber = zeros(1,X+1);
for i = 1:X+1
  tmp = WER(p0,f(i),nb);
  wer(i) = tmp(1);
  ber(i) = tmp(2);
endfor

figure;
plot(f,wer,f,ber);
title("Word error rate et Bit error rate en fonction de f [0:0,5]");
legend('WER','BER');



%%%% faire la question 6


%%%%%%%%%%%%
%err = evaluation(t,tc)
%taux = err/N