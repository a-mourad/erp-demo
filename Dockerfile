# Dockerfile
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy the requirements.txt first and install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy the application code
COPY app/ /app/

# Expose the port the app will run on
EXPOSE 5000

# Command to run the app
CMD ["python", "app/app.py"]
