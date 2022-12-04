plot_penguin <- function(Adelie){
    ggplot(Adelie, aes(x = body_mass_g, y = culmen_depth_mm, colour = sex)) +
  geom_point() +
  geom_smooth(method = "lm", aes(colour=sex)) + 
  labs(x = 'Body mass (g)', 
       y = 'Culmen depth (mm)', title="Penguin ANCOVA", colour="Sex") + 
  theme_bw() + 
  theme(plot.title = element_text(hjust = 0.5)) + 
  scale_color_manual(labels=c("Female", "Male"), values=c("#003d80", "#e27602"))
}

save_ANCOVA_png <- function(Adelie, 
                                  filename, width, height, res, scaling){
  agg_png(filename, width   =  width, 
          height  =  height, 
          units   =  "cm", 
          res     =  res, 
          scaling =  scaling)
  PenguinANCOVA <- plot_penguin(Adelie)
  print(PenguinANCOVA)
  dev.off()
}

save_ANCOVA_svg <- function(Adelie, 
                            filename, width, height, scaling){
  svglite(filename, 
          width   = width, 
          height  = height, 
          scaling = scaling)
  PenguinANCOVA <- plot_penguin(Adelie)
  print(PenguinANCOVA)
  dev.off()
}
