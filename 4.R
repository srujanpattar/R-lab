library(ggplot2)
library(dplyr)
library(plotly)

titanic<-read.csv("Titanic_train.csv")
print(titanic)

#bar_graph
bar_graph<-ggplot(titanic, aes(x=factor(Pclass), fill=factor(Survived)))+
  geom_bar(position = "dodge")+
  labs(titles="Pclass vs Survived", x="Pclass", y="Survived")+
  scale_fill_manual(values = c("0"="red", "1"="blue"))
print(bar_graph)

#Line_graph
line_graph<-ggplot(titanic, aes(x=Age, y=..density..))+
  geom_density(fill="blue", alpha=0.5)+
  labs(titles="Age vs Density", x="Age", y="Density")
print(line_graph)

#scatter_plot
scatter_plot<-ggplot(titanic, aes(x=Age, y=Fare, color = factor(Survived)))+
  geom_point()+
  labs(title = "Age", y="Fare", color="Survived")+
  scale_color_manual(values = c("0"="red", "1"="blue"))
print(scatter_plot)

#heatmap
heatmap<-ggplot(titanic, aes(x=Pclass, y=Survived))+
  stat_bin_2d(bins = 10)+
  labs(title="Pclass vs Survived", x="Pclass", y="Survived")+
  theme_minimal()
print(heatmap)

interactive_bar_char <- ggplotly(bar_char)
interactive_line_graph <- ggplotly(line_graph)
interactive_scatter_plot <- ggplotly(scatter_plot) 
interactive_heatmap <- ggplotly(heatmap)

ggsave("bar_plot.png", plot = bar_char, width = 8, height = 6) 
ggsave("line_plot.png", plot = line_graph, width = 8, height = 6)
ggsave("scatter_plot.png", plot = scatter_plot, width = 8, height = 6)
ggsave("titanic_heatmap_ggplot.png", heatmap, width = 8, height = 6) 
  
  