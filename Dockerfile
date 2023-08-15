# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Set the working directory to /app
WORKDIR /app

# Copy the application code and test files into the container at /app
COPY app /app/app
COPY tests /app/tests

# Install necessary dependencies
RUN pip install pytest

# Run tests when the container launches
CMD ["pytest", "tests"]