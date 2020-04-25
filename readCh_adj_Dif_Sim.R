readCh_adj_Dif_Sim<-function(){
  
  #C:/Users/ia1/Documents/R_work/Ec_En_M/: they are OPSB-based 2018 expression data
 #25 April
  read_tsv('tab_DifChEct_31.txt', col_types = cols(chr = col_character())) -> DifEct_Ir
  
  #read_tsv('tab_DifChEct_3.txt', col_types = cols(chr = col_character())) -> DifEct_Ir
    
  DifEct_Ir %>%
    rename(gene=Row)->DifEct_Ir
  DifEct_Ir 
  
  read_tsv('tab_DifChEnd_3.txt', col_types = cols(chr = col_character())) -> DifEnd_Ir
  DifEnd_Ir %>%
    rename(gene=Row)->DifEnd_Ir
  DifEnd_Ir 
  
  read_tsv('tab_DifChMes_3.txt', col_types = cols(chr = col_character())) -> DifMes_Ir
  DifMes_Ir %>%
    rename(gene=Row)->DifMes_Ir
  DifMes_Ir 
  
read_tsv('tab_SimCh_3.txt', col_types = cols(chr = col_character())) -> Sim_Ir
#tab_SimCh_3
Sim_Ir %>%
  rename(gene=Row)->Sim_Ir
Sim_Ir

#------------------------bind them
EcEnMS=rbind(DifEct_Ir,DifEnd_Ir,DifMes_Ir,Sim_Ir)

#-----------------get vector List of genes
DifEct_Ir %>% 
  distinct(gene) %>% 
  as_vector() -> DEct_vector

DifEnd_Ir %>% 
  distinct(gene) %>% 
  as_vector() -> DEnd_vector

#len_DEn<-length(DEnd_vector)
#len_DEn

DifMes_Ir %>% 
  distinct(gene) %>% 
  as_vector() -> DMes_vector

#------------------Sim
Sim_Ir %>% 
  distinct(gene) %>% 
  as_vector() -> Sim_vector

#-----------------------make matris and split it for single output
EcEnMS %>%
  select(-Var8)%>%
  mutate(set=case_when(gene %in% DMes_vector ~"DifM",
                        gene %in% DEct_vector ~"DifEc",
                        gene %in% DEnd_vector ~"DifEn",
                        gene %in% Sim_vector ~"Sim")
  )->separated_DEGs

#------------------------split into matrices

diff<-separated_DEGs %>%
  group_by(set)

group_split(diff)->gg
#gg
#gg A tibble: ... x 9
#gene    chr     starts     ends strand    ecto    endo  meso set  

}
