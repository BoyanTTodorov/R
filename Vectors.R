# Define vectors
a <- c(6, -2)
b <- c(-4, 4)

# Set up the plot with Monokai-style colors
par(bg = "#272822")  # Monokai dark gray background

plot(x = c(-5, 7), y = c(-3, 5), type = "n", xlab = "X", ylab = "Y", asp = 1,
     col.axis = "white", col.lab = "white", col.main = "white")  # White labels

# Add a dark background to the plotting area
rect(-10, -10, 10, 10, col = "#272822", border = NA)  # Darker inner background

# Draw grid lines
grid(col = "#75715E")  # Monokai light gray-green

# Draw vectors
arrows(0, 0, a[1], a[2], col = "#66D9EF", lwd = 2, length = 0.1)  # Blue vector
arrows(0, 0, b[1], b[2], col = "#F92672", lwd = 2, length = 0.1)  # Pink-red vector

# Add labels in Monokai colors
text(a[1], a[2], labels = "a", pos = 4, col = "white", font = 2)
text(b[1], b[2], labels = "b", pos = 4, col = "white", font = 2)

# Load required libraries
library(ggplot2)

# Define vectors
vectors <- data.frame(
  x = c(0, 0),     # Start points (origin)
  y = c(0, 0),     
  xend = c(6, -4), # End points
  yend = c(-2, 4), 
  label = c("a", "b") # Labels for vectors
)

# Create the plot
ggplot() +
  # Add vectors as arrows
  geom_segment(data = vectors, aes(x = x, y = y, xend = xend, yend = yend, color = label),
               arrow = arrow(length = unit(0.2, "cm")), size = 1.2) +
  # Customize appearance
  xlim(-5, 7) + ylim(-3, 5) +  # Set axis limits
  theme_minimal() +  # Use a clean theme
  theme(panel.background = element_rect(fill = "#272822"),  # Monokai dark background
        plot.background = element_rect(fill = "#272822"),
        panel.grid.major = element_line(color = "#75715E"),  # Monokai-style grid
        panel.grid.minor = element_blank(),
        axis.text = element_text(color = "white"),
        axis.title = element_text(color = "white"),
        legend.position = "none") +
  # Add labels
  geom_text(data = vectors, aes(x = xend, y = yend, label = label, color = label), 
            vjust = -0.5, hjust = 1, size = 5) +
  labs(x = "X", y = "Y", title = "Vectors a and b")

