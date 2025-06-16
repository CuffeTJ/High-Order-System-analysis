close all;
clc;
clear;
SNR=20;
lamengda=ones(1,2051);
wn=exprnd(lamengda);
n=linspace(4,2051,2048);
x=wn(n)+0.9*wn(n-1)+0.385*wn(n-2)-0.771*wn(n-3);
px=mean(x.^2);
pn=px/10^(SNR/10);
vn=wgn(1,2048,pn,1,'linear');
y=x+vn;
bvec=maest(y,3,3,2048,0,'biased');
bvec
