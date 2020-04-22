densityGE_any<- function(Any){
  
  # for any set 'Any' with GE1 GE2 GE3 (ecto endo meso)
  
  Any %>%
      gather(key=layer, value=GE,ecto,endo,meso) -> anyset
      tail(anyset)
      dim(anyset)
                           pe1<-ggplot(anyset,aes (GE))+
                             geom_density(aes (fill=layer), color ="black", alpha=0.5)+
                             scale_fill_manual(values=c("green", "cyan", "magenta"))+
                             #ggtitle("Gene expression distribution each layer")+
                             #ylim(0, 0.3)+
                             xlab("Gene expression")+
                             ylab("density")+
                             theme_minimal(base_size = 14)+
                             theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank())
                                                          #remove grid
                             #theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank())
                           pe1
                           pe1+ theme(legend.title = element_blank()) 
                           
}