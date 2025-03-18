# Define vectors
a <- c(6, -2)
b <- c(-4, 4)

# Set up the plot with Monokai-style colors
par(bg = "#272822")  # Monokai dark gray background

plot(x = c(-5, 7), y = c(-3, 5), type = "n", xlab = "X", ylab = "Y", asp = 1,
     col.axis = "white", col.lab = "white", col.main = "white")  # White labels

# Add a dark background to the plotting area
rect(-10, -10, 10, 10, col = "#1E1E1E", border = NA)  # Darker inner background

# Draw grid lines
grid(col = "#75715E")  # Monokai light gray-green

# Draw vectors
arrows(0, 0, a[1], a[2], col = "#66D9EF", lwd = 2, length = 0.1)  # Blue vector
arrows(0, 0, b[1], b[2], col = "#F92672", lwd = 2, length = 0.1)  # Pink-red vector

# Add labels in Monokai colors
text(a[1], a[2], labels = "a", pos = 4, col = "#66D9EF", font = 2)
text(b[1], b[2], labels = "b", pos = 4, col = "#F92672", font = 2)

