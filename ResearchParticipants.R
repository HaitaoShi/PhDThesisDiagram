install.packages('tidyverse')
library(tidyverse)
options(ggrepel.max.overlaps = Inf)

data <- read.csv(file.choose())
str(data)
data$Generation <- factor(data$Generation, levels = c("YGO", "TGO","OGO"))
data$Education <- factor(data$Education, levels = c("High School", "College", "Police Vocational Academy", "Military Academy","Police College", "University"))
data$Position <- factor(data$Position, levels = c("Narcotic Control Officer", "Director of Narcotic Control Office","Police Assistant","Frontline Police Officer","Vice Captain", "Captain", "Deputy Director", "Political Instructor of Police Station", "Director"))
str(data)
p <- ggplot(data) +
  theme_bw()+
  aes(x = Education, y = Position, label = Name, 
    fill = Generation, segment.color = Generation) +  
  geom_point(color = "red") +
  geom_label_repel(
    color = "white",
    arrow = arrow(
      length = unit(0.01, "npc"), type = "closed", ends = "first"
    ),
    point.padding = NA,
    box.padding = 0.1
  ) + 
  scale_fill_discrete(
    name = "Generation", 
    aesthetics = c ("fill", "segment.color")
    ) +
  guides(fill = guide_legend(override.aes = aes(color = NA)))+
  labs(title = "Demographics of Research Participants") + 
  theme(plot.title = element_text(size=22,lineheight = 1,hjust = 0.5),
        axis.text.x = element_text(size = 8, angle = 0, hjust = .5, vjust = .5),
        axis.text.y = element_text(size = 8, angle = 0, hjust = 1, vjust = 0),  
        axis.title.x = element_text(size = 14, angle = 0, hjust = .5, margin = margin(t = 10, r = 0, b = 0, l = 0)),
        axis.title.y = element_text(size = 14, angle = 90, hjust = .5, margin = margin(t = 0, r = -3, b = 0, l = 0)))
p

