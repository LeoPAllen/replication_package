#!/bin/zsh

# BE SURE TO ACTIVATE THE SHELL SCRIPT USING:
# chmod +x replicate.zsh

# RUN WITH:
# ./replicate.zsh

docker-compose up --build --remove-orphans
docker-compose down --rmi all

