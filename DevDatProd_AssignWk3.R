library(plotly)
data("diamonds")
summary(diamonds)
set.seed(1234)
data <- diamonds[sample(nrow(diamonds), 500), ]
plot <- plot_ly(data = data, x = ~table, y = ~depth, z = ~carat, type = "scatter3d",
                color = ~price, colors = "Spectral", size = 100, alpha = 0.8, mode = "markers")
plot
