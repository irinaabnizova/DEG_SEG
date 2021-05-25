function [T_Neu]=make_table_ect_19(days_ectInc,gene_names)
%---------------------make table from 19 column data(ignore E6.75
% and E6.5 tb and ve

    
%+++++++++++++++++++++++++++++++== GRADIENT in Time
%thrL sh be =<0
%======================if plu vs neuro :  d7-d4 H
%vec1=days_ect(:,6); E4.5
%vec2=days_ect(:,15); E7.5 ect
%ind=days_ect(:,5);


%--------------------make table
%---------------------neuro, increase
chr=days_ectInc(:,1);
start=days_ectInc(:,2);
endi=days_ectInc(:,3);
dir=days_ectInc(:,4);
ind=days_ectInc(:,5);

d4epi=days_ectInc(:,6);
d5epi=days_ectInc(:,7);
d6_epi=days_ectInc(:,8);
d6_ps=days_ectInc(:,9);

d7_ect=days_ectInc(:,15);
d7_end=days_ectInc(:,16);
d7_mes=days_ectInc(:,17);

dif=d7_ect-d4epi;

PN=days_ectInc(:,18);%5 if Neu, -5 if Plu
sidi=days_ectInc(:,19);%11 if sim  15 if dif
T_Neu=table(gene_names(ind),chr, start,endi,dir,dif,PN,sidi,ind,d4epi,d5epi,d6_epi,d6_ps,d7_ect,d7_end,d7_mes);

%filename = 'days_MZ\ectDEG_Neu.xlsx';
%writetable(T_Neu,filename,'Sheet',1,'Range','B1');
