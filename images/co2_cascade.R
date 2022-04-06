#' ---
#' title: 'title'
#' author: 'Mark Butlin'
#' ---

# Clear workspace
graphics.off() # Clear all graphics
# Load required libraries
library(readr)    # faster data frame reading format
library(tidyr)    # for data frame manipulation
library(stringr)
## Libraries for ggplot2 plotting
library(ggplot2)  # general plotting library
library(ggthemes) # contains ideal minimal theme (see below, tufte)
library(cowplot)  # better format plots for publications
library(ggsci)    # for colour pallettes, pal_jama particularly nice
library(plotly)   # interactive plots
theme_set(theme_tufte(base_family = "sans"))

setwd('C:/Users/MQ20073221/OneDrive - Macquarie University/learning and teaching/2019/MEDI211/Lectures/images')

# Load data
##p in mmHg
d <- data.frame(
  group = c('a', 'a', 'a','a'),
  location = c('vein', 'alveoli', 'expired\nair', 'atmospheric'),
  p = c(46, 40, 27, 0.25)
)
d$location <- ordered(d$location, levels = c('vein', 'alveoli', 'expired\nair', 'atmospheric'))

p <- ggplot(d, aes(x = location, y = p, group = group))
p <- p + geom_col()
p <- p + geom_step(position = position_nudge(x = -0.5))
p <- p + labs(x = "", y = "partial pressure of carbon dioxide (mmHg)")
ggsave(file = "co2_cascade.pdf", p, width = 7, height = 4.5)
