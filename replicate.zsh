#!/bin/zsh

# BE SURE TO ACTIVATE THE SHELL SCRIPT USING:
# chmod +x replicate.zsh

# RUN WITH:
# ./replicate.zsh

# Define the image name
IMAGE_NAME="simple_analysis_app"

# Generate the data.csv file
echo "Generating data.csv..."
# add your data generation proceedure here, or skip

# Build the Docker image (drop --no-cache once done developing)
echo "Building the Docker image: {$IMAGE_NAME}"
docker build --no-cache -t $IMAGE_NAME .

# Run the Docker container
echo "Running the Docker container..."
docker run --rm -v $(pwd)/results:/results $IMAGE_NAME

# Notify completion
echo "Container run completed. Check results/* for files"

# Tear down image to save space
docker rmi $IMAGE_NAME
