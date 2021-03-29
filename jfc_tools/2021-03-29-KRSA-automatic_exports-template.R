###Automatic Exports

#well monitoring
png(file = (paste0(JFC_directory_output_whole,Sys.Date()," - ",JFC_experiment_ID," - ","well monitoring.png")),width = 4000,height = 4000,units = "px",pointsize = 24,res = 1200)
rundes + geom_point(data = tt, aes(chips, num,color=factor(colr)), size = 13, show.legend = F) +
  geom_text(data = tt, aes(chips,num,label = nms), size = 2) +
  scale_color_manual(values=c("green3", "red3"))
dev.off()

pdf(file = (paste0(JFC_directory_output_whole,Sys.Date()," - ",JFC_experiment_ID," - ","well monitoring.pdf")),useDingbats = F)
rundes + geom_point(data = tt, aes(chips, num,color=factor(colr)), size = 13, show.legend = F) +
  geom_text(data = tt, aes(chips,num,label = nms), size = 2) +
  scale_color_manual(values=c("green3", "red3"))
dev.off()

png(file = (paste0(JFC_directory_output_whole,Sys.Date()," - ",JFC_experiment_ID," - ","cv_plot_scaled.png")),width = 10000,height = 10000,units = "px",pointsize = 12,res = 1200)
krsa_cv_plot(data_modeled$scaled, ppPassR2)
dev.off()

pdf(file = (paste0(JFC_directory_output_whole,Sys.Date()," - ",JFC_experiment_ID," - ","cv_plot_scaled.pdf")),useDingbats = F)
krsa_cv_plot(data_modeled$scaled, ppPassR2)
dev.off()

#cv_plot_normalized
png(file = (paste0(JFC_directory_output_whole,Sys.Date()," - ",JFC_experiment_ID," - ","cv_plot_normalized.png")),width = 10000,height = 10000,units = "px",pointsize = 12,res = 1200)
krsa_cv_plot(data_modeled$normalized, ppPassR2)
dev.off()

#cv_plot_normalized
pdf(file = (paste0(JFC_directory_output_whole,Sys.Date()," - ",JFC_experiment_ID," - ","cv_plot_normalized.pdf")),useDingbats = F)
krsa_cv_plot(data_modeled$normalized, ppPassR2)
dev.off()

#violin_group
png(file = (paste0(JFC_directory_output_whole,Sys.Date()," - ",JFC_experiment_ID," - ","violin_group.png")),width = 10000,height = 10000,units = "px",pointsize = 12,res = 1200)
krsa_violin_plot(data_modeled$scaled, ppPassR2, "Group")
dev.off()

#violin_group
pdf(file = (paste0(JFC_directory_output_whole,Sys.Date()," - ",JFC_experiment_ID," - ","violin_group.pdf")),useDingbats = F)
krsa_violin_plot(data_modeled$scaled, ppPassR2, "Group")
dev.off()

#violin_barcode
png(file = (paste0(JFC_directory_output_whole,Sys.Date()," - ",JFC_experiment_ID," - ","violin_barcode.png")),width = 10000,height = 10000,units = "px",pointsize = 12,res = 1200)
krsa_violin_plot(data_modeled$scaled, ppPassR2, "Barcode")
dev.off()

#violin_barcode
pdf(file = (paste0(JFC_directory_output_whole,Sys.Date()," - ",JFC_experiment_ID," - ","violin_barcode.pdf")),useDingbats = F)
krsa_violin_plot(data_modeled$scaled, ppPassR2, "Barcode")
dev.off()

#heatmap_scaled
png(file = (paste0(JFC_directory_output_whole,Sys.Date()," - ",JFC_experiment_ID," - ","heatmap_scaled.png")),width = 10000,height = 10000,units = "px",pointsize = 12,res = 1200)
krsa_heatmap(data_modeled$scaled, ppPassR2)
dev.off()

#heatmap_scaled
pdf(file = (paste0(JFC_directory_output_whole,Sys.Date()," - ",JFC_experiment_ID," - ","heatmap_scaled.pdf")),useDingbats = F)
krsa_heatmap(data_modeled$scaled, ppPassR2)
dev.off()

#heatmap_normalized
png(file = (paste0(JFC_directory_output_whole,Sys.Date()," - ",JFC_experiment_ID," - ","heatmap_normalized.png")),width = 10000,height = 10000,units = "px",pointsize = 12,res = 1200)
krsa_heatmap(data_modeled$normalized, ppPassR2)
dev.off()

#heatmap_normalized
pdf(file = (paste0(JFC_directory_output_whole,Sys.Date()," - ",JFC_experiment_ID," - ","heatmap_normalized.pdf")),useDingbats = F)
krsa_heatmap(data_modeled$normalized, ppPassR2)
dev.off()

#heatmap_modeled_grouped
png(file = (paste0(JFC_directory_output_whole,Sys.Date()," - ",JFC_experiment_ID," - ","heatmap_modeled_grouped.png")),width = 10000,height = 10000,units = "px",pointsize = 12,res = 1200)
krsa_heatmap_grouped(data_modeled$grouped, ppPassR2)
dev.off()

#heatmap_modeled_grouped
pdf(file = (paste0(JFC_directory_output_whole,Sys.Date()," - ",JFC_experiment_ID," - ","heatmap_modeled_grouped.pdf")),useDingbats = F)
krsa_heatmap_grouped(data_modeled$grouped, ppPassR2)
dev.off()

#heatmap - comparison 1
png(file = (paste0(JFC_directory_output_comparison,Sys.Date()," - ",JFC_experiment_ID," - ","heatmap"," - ",JFC_comparison,".png")),width = 10000,height = 10000,units = "px",pointsize = 12,res = 1200)
krsa_heatmap(data_modeled$normalized, sigPeps$meanLFC$`0.2`, groups = comparisons$Comp1)
dev.off()

#heatmap - comparison 1
pdf(file = (paste0(JFC_directory_output_comparison,Sys.Date()," - ",JFC_experiment_ID," - ","heatmap"," - ",JFC_comparison,".pdf")),useDingbats = F)
krsa_heatmap(data_modeled$normalized, sigPeps$meanLFC$`0.2`, groups = comparisons$Comp1)
dev.off()

#violin plot - comparison 1
png(file = (paste0(JFC_directory_output_comparison,Sys.Date()," - ",JFC_experiment_ID," - ","violin plot"," - ",JFC_comparison,".png")),width = 10000,height = 10000,units = "px",pointsize = 12,res = 1200)
krsa_violin_plot(data_modeled$scaled, sigPeps$meanLFC$`0.2`, "Barcode", groups = comparisons$Comp1)
dev.off()

#violin plot - comparison 1
pdf(file = (paste0(JFC_directory_output_comparison,Sys.Date()," - ",JFC_experiment_ID," - ","violin plot"," - ",JFC_comparison,".pdf")),useDingbats = F)
krsa_violin_plot(data_modeled$scaled, sigPeps$meanLFC$`0.2`, "Barcode", groups = comparisons$Comp1)
dev.off()

#waterfall plot - comparison 1
png(file = (paste0(JFC_directory_output_comparison,Sys.Date()," - ",JFC_experiment_ID," - ","waterfall plot"," - ",JFC_comparison,".png")),width = 10000,height = 15000,units = "px",pointsize = 12,res = 1200)
krsa_waterfall(diff_df, 0.2, byChip = F)
dev.off()

#waterfall plot - comparison 1
pdf(file = (paste0(JFC_directory_output_comparison,Sys.Date()," - ",JFC_experiment_ID," - ","waterfall plot"," - ",JFC_comparison,".pdf")),useDingbats = F)
krsa_waterfall(diff_df, 0.2, byChip = F)
dev.off()

#curve plot - comparison 1
png(file = (paste0(JFC_directory_output_comparison,Sys.Date()," - ",JFC_experiment_ID," - ","curve plot"," - ",JFC_comparison,".png")),width = 20000,height = 10000,units = "px",pointsize = 12,res = 1200)
krsa_curve_plot(data_pw, sigPeps$meanLFC$`0.2`, groups = comparisons$Comp1)
dev.off()

#curve plot - comparison 1
pdf(file = (paste0(JFC_directory_output_comparison,Sys.Date()," - ",JFC_experiment_ID," - ","curve plot"," - ",JFC_comparison,".pdf")),useDingbats = F)
krsa_curve_plot(data_pw, sigPeps$meanLFC$`0.2`, groups = comparisons$Comp1)
dev.off()

#waterfall plot z scores - comparison 1
#version A
png(file = (paste0(JFC_directory_output_comparison,Sys.Date()," - ",JFC_experiment_ID," - ","waterfall plot - Zscores ver A"," - ",JFC_comparison,".png")),width = 10000,height = 12000,units = "px",pointsize = 12,res = 1200)
krsa_zscores_plot(AvgZTable)
dev.off()
#version B
png(file = (paste0(JFC_directory_output_comparison,Sys.Date()," - ",JFC_experiment_ID," - ","waterfall plot - Zscores ver B"," - ",JFC_comparison,".png")),width = 10000,height = 12000,units = "px",pointsize = 12,res = 1200)
krsa_zscores_plot(AvgZTable2)
dev.off()

#waterfall plot z scores - comparison 1
#version A
pdf(file = (paste0(JFC_directory_output_comparison,Sys.Date()," - ",JFC_experiment_ID," - ","waterfall plot - Zscores ver A"," - ",JFC_comparison,".pdf")),useDingbats = F)
krsa_zscores_plot(AvgZTable)
dev.off()
#version B
pdf(file = (paste0(JFC_directory_output_comparison,Sys.Date()," - ",JFC_experiment_ID," - ","waterfall plot - Zscores ver B"," - ",JFC_comparison,".pdf")),useDingbats = F)
krsa_zscores_plot(AvgZTable2)
dev.off()

#reverse krsa plot - comparison 1
png(file = (paste0(JFC_directory_output_comparison,Sys.Date()," - ",JFC_experiment_ID," - ","reverse krsa plot"," - ",JFC_comparison,".png")),width = 10000,height = 10000,units = "px",pointsize = 12,res = 1200)
krsa_reverse_krsa_plot(chipCov, diff_df, kinases_hits, 0.2, byChip = F) + ylim(-1,3.1) #ylim tells it y axis range
dev.off()

#reverse krsa plot - comparison 1
pdf(file = (paste0(JFC_directory_output_comparison,Sys.Date()," - ",JFC_experiment_ID," - ","reverse krsa plot"," - ",JFC_comparison,".pdf")),useDingbats = F)
krsa_reverse_krsa_plot(chipCov, diff_df, kinases_hits, 0.2, byChip = F) + ylim(-1,3.1)
dev.off()

#coverage plot - comparison 1
png(file = (paste0(JFC_directory_output_comparison,Sys.Date()," - ",JFC_experiment_ID," - ","coverage plot"," - ",JFC_comparison,".png")),width = 10000,height = 14000,units = "px",pointsize = 12,res = 1200)
krsa_coverage_plot(chipCov, AvgZTable2, chipType)
dev.off()

#coverage plot - comparison 1
pdf(file = (paste0(JFC_directory_output_comparison,Sys.Date()," - ",JFC_experiment_ID," - ","coverage plot"," - ",JFC_comparison,".pdf")),useDingbats = F)
krsa_coverage_plot(chipCov, AvgZTable2, chipType)
dev.off()

#ball of yarn model - comparison 1
library(igraph)
png(file = (paste0(JFC_directory_output_comparison,Sys.Date()," - ",JFC_experiment_ID," - ","ball of yard model"," - ",JFC_comparison,".png")),width = 20000,height = 20000,units = "px",pointsize = 5,res = 3000)
krsa_ball_model(kinases_hits, AvgZTable2, 10, 2.5, 4.8)
dev.off()

#ball of yarn model - comparison 1
library(igraph)
pdf(file = (paste0(JFC_directory_output_comparison,Sys.Date()," - ",JFC_experiment_ID," - ","ball of yard model"," - ",JFC_comparison,".pdf")),useDingbats = F)
krsa_ball_model(kinases_hits, AvgZTable2, 10, 2.5, 4.8)
dev.off()
