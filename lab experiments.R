############################################################################
#EXPERIMENT1
# Load necessary library
library(ggplot2)

# Create the data frame
weight_height_data <- data.frame(
  Weight = c(60, 65, 70, 72, 75),
  Height = c(170, 175, 168, 180, 178)
)

# Create scatter plot with trend line
ggplot(weight_height_data, aes(x = Weight, y = Height)) +
  geom_point(color = "blue", size = 3) +
  geom_smooth(method = "lm", se = FALSE, color = "red") +
  labs(
    title = "Weight vs. Height",
    x = "Weight (kg)",
    y = "Height (cm)"
  ) +
  theme_minimal()
############################################################################
#EXPERIMENT2
# Create a data frame
# Load necessary library
library(ggplot2)

# Create a data frame
year_population_data <- data.frame(
  Year = 2010:2014,
  Population = c(1000, 1020, 1040, 1060, 1080)
)

# Create line plot with points
ggplot(year_population_data, aes(x = Year, y = Population)) +
  geom_line(color = "green", size = 1) +
  geom_point(color = "red", size = 3) +
  labs(
    title = "Year vs. Population",
    x = "Year",
    y = "Population (millions)"
  ) +
  theme_minimal()
############################################################################
#EXPERIMENT3
# Load necessary library
library(ggplot2)

# Create a data frame
sales_data <- data.frame(
  Product = c("A", "B", "C", "D", "E"),
  Sales = c(300, 450, 500, 350, 400)
)

# Create bar plot
ggplot(sales_data, aes(x = Product, y = Sales, fill = Product)) +
  geom_bar(stat = "identity") +
  labs(
    title = "Sales by Product",
    x = "Product",
    y = "Sales"
  ) +
  theme_minimal()
############################################################################
#EXPERIMENT4
# Load necessary library
library(ggplot2)

# Create a data frame
age_data <- data.frame(
  Age = c(25, 30, 35, 40, 45, 50, 55, 60, 65, 70)
)

# Create histogram
ggplot(age_data, aes(x = Age)) +
  geom_histogram(
    binwidth = 5,
    fill = "purple",
    color = "black",
    alpha = 0.7
  ) +
  labs(
    title = "Age Distribution",
    x = "Age",
    y = "Frequency"
  ) +
  theme_minimal()
############################################################################
#EXPERIMENT5
# Load necessary library
library(ggplot2)

# Create a data frame
market_share_data <- data.frame(
  Company = c("A", "B", "C", "D"),
  Market_Share = c(20, 30, 25, 25)
)

# Create pie chart
ggplot(market_share_data, aes(x = "", y = Market_Share, fill = Company)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar("y") +
  labs(
    title = "Market Share by Company",
    x = NULL,
    y = NULL
  ) +
  theme_void() +
  theme(legend.position = "right")
############################################################################
#EXPERIMENT6
# Load necessary library
library(ggplot2)

# Create a data frame
scores_data <- data.frame(
  Class = c("A", "A", "A", "A", "B", "B", "B", "B"),
  Scores = c(85, 90, 78, 92, 88, 76, 80, 84)
)

# Create box plot
ggplot(scores_data, aes(x = Class, y = Scores, fill = Class)) +
  geom_boxplot() +
  labs(
    title = "Exam Scores by Class",
    x = "Class",
    y = "Scores"
  ) +
  theme_minimal()
############################################################################
#EXPERIMENT7
# Load necessary library
library(ggplot2)

# Create a data frame
weights_data <- data.frame(
  Weight = c(60, 65, 70, 75, 80, 85, 90, 95, 100)
)

# Create density plot
ggplot(weights_data, aes(x = Weight)) +
  geom_density(fill = "lightblue", alpha = 0.7) +
  labs(
    title = "Density Plot of Weights",
    x = "Weight (kg)",
    y = "Density"
  ) +
  theme_minimal()
############################################################################
#EXPERIMENT8

# Load necessary libraries
library(ggplot2)
library(reshape2)

# Create a data frame
temperature_data <- data.frame(
  Month = c("Jan", "Feb", "Mar", "Apr", "May"),
  City_A = c(5, 6, 7, 8, 9),
  City_B = c(10, 11, 12, 13, 14),
  City_C = c(15, 16, 17, 18, 19)
)

# Reshape data for heatmap
melted_data <- melt(temperature_data, id.vars = "Month")

# Create heatmap
ggplot(melted_data, aes(x = Month, y = variable, fill = value)) +
  geom_tile() +
  scale_fill_gradient(low = "white", high = "red") +
  labs(
    title = "Monthly Temperatures",
    x = "Month",
    y = "City"
  ) +
  theme_minimal()
############################################################################
#EXPERIMENT9
# Load necessary library
library(ggplot2)

# Create a data frame
sales_region_data <- data.frame(
  Month = c("Jan", "Jan", "Feb", "Feb", "Mar", "Mar"),
  Region = c("East", "West", "East", "West", "East", "West"),
  Sales = c(200, 150, 220, 170, 210, 160)
)

# Create facet bar plot
ggplot(sales_region_data, aes(x = Month, y = Sales, fill = Region)) +
  geom_bar(stat = "identity", position = "dodge") +
  facet_wrap(~ Region) +
  labs(
    title = "Sales by Month and Region",
    x = "Month",
    y = "Sales"
  ) +
  theme_minimal()
############################################################################
#EXPERIMENT9
# Load necessary library
library(ggplot2)

# Create a data frame
sales_region_data <- data.frame(
  Month = c("Jan", "Jan", "Feb", "Feb", "Mar", "Mar"),
  Region = c("East", "West", "East", "West", "East", "West"),
  Sales = c(200, 150, 220, 170, 210, 160)
)

# Create facet bar plot
ggplot(sales_region_data, aes(x = Month, y = Sales, fill = Region)) +
  geom_bar(stat = "identity", position = "dodge") +
  facet_wrap(~ Region) +
  labs(
    title = "Sales by Month and Region",
    x = "Month",
    y = "Sales"
  ) +
  theme_minimal()
############################################################################
#EXPERIMENT11
# Load required library
library(ggplot2)

# Create the data frame
revenue_data <- data.frame(
  Year = 2015:2019,
  Revenue = c(30, 35, 40, 45, 50)
)

# Create area plot
ggplot(revenue_data, aes(x = Year, y = Revenue)) +
  geom_area(fill = "skyblue", alpha = 0.5) +
  labs(
    title = "Yearly Revenue",
    x = "Year",
    y = "Revenue (in million)"
  ) +
  theme_minimal()
############################################################################
#EXPERIMENT12
# Load required library
library(ggplot2)

# Create the data frame
cumulative_sales_data <- data.frame(
  Month = factor(
    c("Jan", "Feb", "Mar", "Apr", "May"),
    levels = c("Jan", "Feb", "Mar", "Apr", "May")
  ),
  Cumulative_Sales = c(100, 200, 300, 400, 500)
)

# Create step plot
ggplot(cumulative_sales_data, aes(x = Month, y = Cumulative_Sales, group = 1)) +
  geom_step(color = "blue", linewidth = 1) +
  labs(
    title = "Cumulative Sales Over Months",
    x = "Month",
    y = "Cumulative Sales"
  ) +
  theme_minimal()
############################################################################
#EXPERIMENT13
# Install ggridges if not already installed
if (!require(ggridges)) {
  install.packages("ggridges")
  library(ggridges)
}

# Load ggplot2
library(ggplot2)

# Create the data frame
temperature_data <- data.frame(
  City = c("City1", "City1", "City1", "City2", "City2", "City2"),
  Temperature = c(20, 21, 19, 22, 23, 24)
)

# Create ridgeline plot
ggplot(temperature_data, aes(x = Temperature, y = City, fill = City)) +
  geom_density_ridges(alpha = 0.7) +
  labs(
    title = "Temperature Distributions",
    x = "Temperature",
    y = "City"
  ) +
  theme_minimal()
############################################################################
#EXPERIMENT14
# Load required library
library(ggplot2)

# Create the data frame
sales_campaign_data <- data.frame(
  Product = c("A", "B", "C"),
  Before = c(200, 300, 400),
  After = c(250, 350, 450)
)

# Create dumbbell-style plot using ggplot2
ggplot(sales_campaign_data) +
  geom_segment(
    aes(y = Product, yend = Product, x = Before, xend = After),
    color = "gray",
    linewidth = 1.5
  ) +
  geom_point(aes(x = Before, y = Product), color = "blue", size = 3) +
  geom_point(aes(x = After, y = Product), color = "red", size = 3) +
  labs(
    title = "Sales Before and After Campaign",
    x = "Sales",
    y = "Product"
  ) +
  theme_minimal()
############################################################################
#EXPERIMENT15

# Load required lib# Load required library
library(ggplot2)

# Create the data frame
sales_region_data <- data.frame(
  Region = c("North", "South", "East", "West"),
  Sales = c(150, 200, 180, 210)
)

# Create lollipop plot
ggplot(sales_region_data, aes(x = Region, y = Sales)) +
  geom_segment(
    aes(x = Region, xend = Region, y = 0, yend = Sales),
    color = "gray",
    linewidth = 1
  ) +
  geom_point(color = "blue", size = 5) +
  labs(
    title = "Sales by Region",
    x = "Region",
    y = "Sales"
  ) +
  theme_minimal()
############################################################################
#EXPERIMENT16
# Load required library
library(ggplot2)

# Create the data frame
sales_time_data <- data.frame(
  Month = factor(c("Jan", "Feb", "Mar", "Jan", "Feb", "Mar"),
                 levels = c("Jan", "Feb", "Mar")),
  Product = c("A", "A", "A", "B", "B", "B"),
  Sales = c(100, 150, 130, 120, 140, 160)
)

# Create spaghetti plot
ggplot(sales_time_data, aes(x = Month, y = Sales, group = Product, color = Product)) +
  geom_line(linewidth = 1) +
  geom_point(size = 3) +
  labs(
    title = "Sales over Time by Product",
    x = "Month",
    y = "Sales"
  ) +
  theme_minimal()
############################################################################
#EXPERIMENT17
#Install waterfalls if not already installed
if (!require(waterfalls)) {
  install.packages("waterfalls")
  library(waterfalls)
}

# Create the data frame
profit_loss_data <- data.frame(
  labels = c("Jan", "Feb", "Mar", "Apr", "May"),
  values = c(100, -20, 50, -10, 80)
)

# Create waterfall plot
waterfall(profit_loss_data, fill_by_sign = TRUE)
############################################################################
#EXPERIMENT18
# Install hexbin if not already installed
if (!require(hexbin)) {
  install.packages("hexbin")
  library(hexbin)
}

# Load ggplot2
library(ggplot2)

# Create the data frame
xy_data <- data.frame(
  X = c(1, 2, 3, 4, 5, 6, 7, 8),
  Y = c(2, 3, 4, 5, 6, 7, 8, 9)
)

# Create hexbin plot
ggplot(xy_data, aes(x = X, y = Y)) +
  geom_hex() +
  labs(
    title = "Hexbin Plot",
    x = "X",
    y = "Y"
  ) +
  theme_minimal()
############################################################################
#EXPERIMENT19

# Install circlize if not already installed
if (!require(circlize)) {
  install.packages("circlize")
  library(circlize)
}

# Create the data frame
chord_data <- data.frame(
  From = c("A", "A", "B", "B", "C"),
  To   = c("B", "C", "C", "D", "D"),
  Value = c(10, 20, 15, 25, 30)
)

# Clear any previous circular plots
circos.clear()

# Plot chord diagram
chordDiagram(chord_data)

# Optional: clear after plotting
circos.clear()
############################################################################
#EXPERIMENT20
# Load necessary libraries
library(lubridate)
library(ggplot2)

# Create a data frame
activity_data <- data.frame(
  Date = as.Date(c("2023-01-01", "2023-01-02", "2023-01-03", "2023-01-04", "2023-01-05")),
  Count = c(10, 12, 15, 8, 20)
)

# Add weekday and week of year columns
activity_data$Weekday <- wday(activity_data$Date, label = TRUE)  # Weekday labels
activity_data$Week <- week(activity_data$Date)                   # Week of the year

# View the updated data
print(activity_data)

# Plot counts by date
ggplot(activity_data, aes(x = Date, y = Count)) +
  geom_line(color = "blue", size = 1) +
  geom_point(color = "red", size = 3) +
  labs(title = "Activity Count Over Time",
       x = "Date",
       y = "Count") +
  theme_minimal()






