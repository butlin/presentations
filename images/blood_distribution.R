#' ---
#' title: 'title'
#' author: 'Mark Butlin'
#' ---

# Clear workspace
graphics.off() # Clear all graphics
# Load required libraries
library(readr)    # faster data frame reading format
library(tidyr)    # for data frame manipulation
## Libraries for ggplot2 plotting
library(ggplot2)  # general plotting library
library(ggthemes) # contains ideal minimal theme (see below, tufte)
library(cowplot)  # better format plots for publications
library(ggsci)    # for colour pallettes, pal_jama particularly nice
library(plotly)   # interactive plots
library(stringr)
theme_set(theme_tufte(base_family = "sans"))

#setwd('C:/Users/MQ20073221/OneDrive - Macquarie University/learning and teaching/2019/MEDI211/Lectures/images')

# Load data
d <- data.frame(
  region = c("heart (diastole)", "greater systemic arteries", "lesser systemic arteries and arterioles", "systemic capillaries", "systemic veins", "pulmonary vasculature"),
  bloodvolume = c(7,7,8,5,64,9)
)
d$region <- ordered(d$region, levels = d$region)
d$labels <- paste(d$bloodvolume,"%")

# Plot
p <- ggplot(d, aes(x = region, y = bloodvolume))
p <- p + stat_summary(fun.y = identity, geom = "bar")
p <- p + geom_text(aes(label=labels), vjust=-0.1)
p <- p + labs(x = "", y = "blood volume (% of total in body)")
p <- p + scale_x_discrete(labels = function(x) str_wrap(x, width = 10))
ggsave("blood_distribution.pdf", plot = p, width = 7, height = 3.5)
