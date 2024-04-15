# Use an official Maven image
FROM maven:3.9.6-eclipse-temurin-17-alpine

# Set the working directory
WORKDIR /usr/src/app

# Copy the source code
COPY . .

# Define default command to run when the container starts
CMD ["mvn", "--version"]
