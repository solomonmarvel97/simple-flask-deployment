# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any necessary dependencies
RUN pip install flask

# Make port 8080 available to the world outside this container
EXPOSE 8080

# Define environment variable for production
ENV FLASK_ENV=production

# Run app.py when the container launches
CMD ["python", "main.py"]
