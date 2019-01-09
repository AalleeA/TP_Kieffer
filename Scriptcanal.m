%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% affichage mots plus canal %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all;
close all;

N = 4;
nb = 200;
p0 = 0.5;
X=80;
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

pb = logspace(0.000000001,0.1,1000)-1;
for i = 1:1000
  R(i) = (1-H2x(0.1))/(1-H2x(pb(i)));
endfor
figure;

semilogy(R,pb);
xlim([0 1]);
hold on;
plot([4/7],[wer(X/5)], 'r*');
title("Evaluation du code");
legend('limite de shanon','H(7,4)');


%%%%%%%%%%%%
%err = evaluation(t,tc)
%taux = err/N