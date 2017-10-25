
load MIQ-3_Data.mat

tbl = table(average_z_per_part * -1 ,MIQ3,'VariableNames',{ 'Zval', 'MIQ3' });

lm = fitlm(tbl,'linear')

figure, 
lm.plot,

