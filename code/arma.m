close all;
clc;
clear;
load arma1.mat
[avec,bvec]=armaqs(y,2,1,3,10,128);
disp(avec');
disp(bvec');
figure
subplot(221)
bisp_rts=bispect(avec,bvec,128);
title('armart函数估计的双谱平面图');
abs_bisp=abs(bisp_rts);
subplot(223)
mesh(abs_bisp);
title('armart函数估计的双谱三维图');
[avec,bvec]=armarts(y,2,1,3,12,128);
disp(avec');
disp(bvec');
subplot(222);
bisp_qs=bispect(avec,bvec,128);
title('armaqs函数估计的双谱平面图');
abs_bisp=abs(bisp_qs);
subplot(224)
mesh(abs_bisp);
title('armaqs函数估计的双谱三维图')
