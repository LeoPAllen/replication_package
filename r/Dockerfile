# project/R/Dockerfile
FROM r-base:latest

# Create a working directory
WORKDIR /app

# Copy the R script
COPY script.R .

# # Install necessary R packages
# RUN R -e "install.packages('readr', dependencies = TRUE, repos='http://cran.us.r-project.org')"

# Command to run the R script
CMD ["Rscript", "script.R"]