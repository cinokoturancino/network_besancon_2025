# Load the necessary libraries for interactive network visualization and data manipulation
library(visNetwork)
library(tidyverse)

# Load data from CSV files
nodes <- read_csv("data/nodes_ESU_network_2025.csv")
edges <- read_csv("data/edges_ESU_network_2025.csv")

# Create a visNetwork plot with customized nodes
visNetwork(nodes, 
           edges,
           main = "Network of Travelers",
           height = "500px", 
           width = "100%") %>% 
  visOptions(highlightNearest = TRUE) %>%
  visIgraphLayout(layout = "layout_on_sphere") %>%
visOptions(selectedBy = "group") 

