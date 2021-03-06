
Colors = jet(2)

%% NF 1

load NF1_2_3_Z12pnts_data.mat

f = figure
UnivarScatter(DataArrayNF1,'Label',{'Decrease (average)','Increase (average)'},'MarkerFaceColor',Colors);

[r1, r2, r3] = signrank(DataArrayNF1(:,1), DataArrayNF1(:,2), 'method', 'approximate');

hText   = text(1.9, .85, ...
  sprintf('\\it{Z = %0.3f, P-val (<0.05) = %i)}', r3.zval, r2));


title('NF 1')

set(gca, ...
  'Box'         , 'off'     , ...
  'TickDir'     , 'out'     , ...
  'TickLength'  , [.02 .02] , ...
  'XMinorTick'  , 'on'      , ...
  'YMinorTick'  , 'on'      , ...
  'YGrid'       , 'on'      , ...
  'XColor'      , [.3 .3 .3], ...
  'YColor'      , [.3 .3 .3], ...
  'YLim'       , [-1,1], ...
  'LineWidth'   , 1         );


print (f, '-dpng', 'nf1_12pntsperblock.png')

%% NF2

f = figure
UnivarScatter(DataArrayNF2,'Label',{'Decrease (average)','Increase (average)'},'MarkerFaceColor',Colors);

[r1, r2, r3] = signrank(DataArrayNF2(:,1), DataArrayNF2(:,2), 'method', 'approximate');

hText   = text(1.9, .85, ...
  sprintf('\\it{Z = %0.3f, P-val (<0.05) = %i)}', r3.zval, r2));


title('NF 2')

set(gca, ...
  'Box'         , 'off'     , ...
  'TickDir'     , 'out'     , ...
  'TickLength'  , [.02 .02] , ...
  'XMinorTick'  , 'on'      , ...
  'YMinorTick'  , 'on'      , ...
  'YGrid'       , 'on'      , ...
  'XColor'      , [.3 .3 .3], ...
  'YColor'      , [.3 .3 .3], ...
  'YLim'       , [-1,1], ...
  'LineWidth'   , 1         );


print (f, '-dpng', 'nf2_12pntsperblock.png')


%% NF3

f = figure
UnivarScatter(DataArrayNF1,'Label',{'Decrease (average)','Increase (average)'},'MarkerFaceColor',Colors);

[r1, r2, r3] = signrank(DataArrayNF3(:,1), DataArrayNF3(:,2), 'method', 'approximate');

hText   = text(1.9, .85, ...
  sprintf('\\it{Z = %0.3f, P-val (<0.05) = %i)}', r3.zval, r2));


title('NF 3')

set(gca, ...
  'Box'         , 'off'     , ...
  'TickDir'     , 'out'     , ...
  'TickLength'  , [.02 .02] , ...
  'XMinorTick'  , 'on'      , ...
  'YMinorTick'  , 'on'      , ...
  'YGrid'       , 'on'      , ...
  'XColor'      , [.3 .3 .3], ...
  'YColor'      , [.3 .3 .3], ...
  'YLim'       , [-1,1], ...
  'LineWidth'   , 1         );


print (f, '-dpng', 'nf3_12pntsperblock.png')




%% Set DATA 

data_dec = all_dec_transfer;
%all_dec_transfer(2:12:960)
data_inc = all_inc_transfer;
%all_inc_transfer(2:12:960)
name_run = 'transfer';


% All pnts per run
[r1, r2, r3] = friedman([data_dec', data_inc']);
sprintf('run %s - \\it{Chi-sq = %0.3f, P-val (<0.05) = %i)}',name_run, r2{2,5}, r2{2,6})


f = figure
UnivarScatter([data_dec', data_inc'],'Label',{'Decrease (average)','Increase (average)'},'MarkerFaceColor',Colors);

%[r1, r2, r3] = ranksum(all_dec_nf2(2:12:end)', all_inc_nf2(2:12:end)', 'method', 'approximate');

hText   = text(2.5, .85, ...
  sprintf('%s -\n \\it{Chi-sq = %0.3f,\n P-val = %0.3f)}',name_run, r2{2,5}, r2{2,6}));


title([name_run ' - correlation data'])

set(gca, ...
  'Box'         , 'off'     , ...
  'TickDir'     , 'out'     , ...
  'TickLength'  , [.02 .02] , ...
  'XMinorTick'  , 'on'      , ...
  'YMinorTick'  , 'on'      , ...
  'YGrid'       , 'on'      , ...
  'XColor'      , [.3 .3 .3], ...
  'YColor'      , [.3 .3 .3], ...
  'YLim'       , [-1,1], ...
  'LineWidth'   , 1         );


print (f, '-dpng', [name_run '_12pntsperblock.png'])