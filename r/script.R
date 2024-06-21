# project/r/script.R

# Read the CSV file
read_file_path <- '/app/data/weather.csv'
data <- read.table(read_file_path, sep = ",", header = TRUE, stringsAsFactors = FALSE, check.names=FALSE)

# Process the data (example: adding a new column)
data$Processed <- TRUE

# Write the CSV file back
write_file_path = '/app/data/weather_processed.csv'
write.table(data, file = write_file_path, sep = ",", row.names = FALSE, col.names = TRUE, quote = FALSE)

print("Data processed and saved to /app/data/weather_processed.csv")