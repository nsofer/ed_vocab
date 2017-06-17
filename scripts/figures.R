## ORGANIZE DATA ####
data_figs = data


## MAKE FIGURE ####
edu_vocab.plot = ggplot(data_figs, aes(x = education, y = vocabulary, color = sex)) +
  #geom_jitter()+
geom_smooth(method = "lm")+
theme_classic()

edu_vocab.plot
ggsave("figures/edu_vocab.pdf" , edu_vocab.plot, height = 7, width = 7, units = "in")
