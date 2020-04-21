readCh_adj_Sim<-function(){
  library(tidyverse)
  read_tsv('tab_SimCh_3.txt', col_types = cols(chr = col_character())) -> Sim_Ir
  #tab_SimCh_3
  Sim_Ir %>%
    rename(gene=Row)->DifEct_Ir
  Sim_Ir
}