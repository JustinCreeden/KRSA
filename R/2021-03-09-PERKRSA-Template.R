


#Define kinases of interest

#all
JFC_kinases_of_interest <- c("Lck","Fyn","Lyn","Abl","BLK","Src","Yes","HCK","Syk","CTK","ZAP70","Ron","DDR1","FRK","EphA2","Arg","FmS/CSFR","LTK","EphA1","TEC","EphA5","HER3","Fgr","InSR","Srm")


#tk
JFC_kinases_of_interest_group1 <- c("Lck","Fyn","Lyn","Abl","BLK","Src","Yes","HCK","Syk","CTK","ZAP70","Ron","DDR1","FRK","EphA2","Arg","FmS/CSFR","LTK","EphA1","TEC","EphA5","HER3","Fgr","InSR","Srm")

#camk
#JFC_kinases_of_interest_group2 <-

#agc
#JFC_kinases_of_interest_group3 <-


# take 10 random kinases as an example
#sample(processed_uka_map$Kin, 10) -> top_kin


# reverse krsa plot using specific kinases

#group 1
#png(file = (paste0(JFC_directory_output_comparison_pp,Sys.Date(),"-",JFC_experiment_ID,"-","group1",".png")),width = 4000,height = 4000,units = "px",pointsize = 24,res = 1200)
krsa_reverse_krsa_plot(processed_uka_map, diff_df, kinases = JFC_kinases_of_interest_group1, 0.2, byChip = F) +
  theme(axis.text.x = element_text(angle = 90))
#dev.off()

#pdf(file = (paste0(JFC_directory_output_comparison_pp,Sys.Date(),"-",JFC_experiment_ID,"-","group1",".pdf")),useDingbats = F)
#krsa_reverse_krsa_plot(processed_uka_map, diff_df, kinases = JFC_kinases_of_interest_group1, 0.2, byChip = F) +
#  theme(axis.text.x = element_text(angle = 90))
#dev.off()


#group 2
#png(file = (paste0(JFC_directory_output_comparison_pp,Sys.Date(),"-",JFC_experiment_ID,"-","group2",".png")),width = 4000,height = 4000,units = "px",pointsize = 24,res = 1200)
krsa_reverse_krsa_plot(processed_uka_map, diff_df, kinases = JFC_kinases_of_interest_group2, 0.2, byChip = F) +
  theme(axis.text.x = element_text(angle = 90))
#dev.off()

#pdf(file = (paste0(JFC_directory_output_comparison_pp,Sys.Date(),"-",JFC_experiment_ID,"-","group2",".pdf")),useDingbats = F)
#krsa_reverse_krsa_plot(processed_uka_map, diff_df, kinases = JFC_kinases_of_interest_group2, 0.2, byChip = F) +
#  theme(axis.text.x = element_text(angle = 90))
#dev.off()


#group 3
#png(file = (paste0(JFC_directory_output_comparison_pp,Sys.Date(),"-",JFC_experiment_ID,"-","group3",".png")),width = 4000,height = 4000,units = "px",pointsize = 24,res = 1200)
krsa_reverse_krsa_plot(processed_uka_map, diff_df, kinases = JFC_kinases_of_interest_group3, 0.2, byChip = F) +
  theme(axis.text.x = element_text(angle = 90))
#dev.off()

#pdf(file = (paste0(JFC_directory_output_comparison_pp,Sys.Date(),"-",JFC_experiment_ID,"-","group3",".pdf")),useDingbats = F)
#krsa_reverse_krsa_plot(processed_uka_map, diff_df, kinases = JFC_kinases_of_interest_group2, 0.2, byChip = F) +
#  theme(axis.text.x = element_text(angle = 90))
#dev.off()






# join lfc table and uka mapping table
left_join(diff_df, processed_uka_map, by = c("Peptide" = "Substrates")) -> mapped_lfc_table


# waterfall plot
mapped_lfc_table %>%
  # choose kinase to plot
  #use this line if you want to filter from '10 random kinase list'
  #filter(Kin %in% top_kin[5:6]) %>%
  #use this line if you want to use 'kinases of interest list' with subsetting [1] as first kinase
  filter(Kin %in% JFC_kinases_of_interest[1]) %>%
  krsa_waterfall(0.2) +
  facet_wrap(~Kin, scales = "free_y")


#cols <- c("High" = "red", "Medium" = "blue", "Low" = "darkgreen")

# per peptide plot with color representing kinase rank
mapped_lfc_table %>%
  #filter(Kin %in% top_kin[4]) %>%
  filter(Kin %in% JFC_kinases_of_interest[1]) %>%
  ggplot(aes(LFC, reorder(Peptide, totalMeanLFC))) +
  geom_vline(xintercept = 0) +
  geom_line(aes(color = `Mapping Confidence`), size = 5) +
  geom_point(size = 3) +
  geom_point(aes(totalMeanLFC, reorder(Peptide, totalMeanLFC)), size = 5) +
  facet_wrap(~Kin, scales = "free_y") +
  labs(y = NULL) +
  theme(
    legend.title = element_text(size = 8),
    legend.text = element_text(size = 5),
    legend.key.size = unit(0.2, "cm"),
    axis.text.y = element_text(size = 5)
  )

