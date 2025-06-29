# Dockerfile for Flask App
FROM python:3.9-slim

# Set work directory
WORKDIR /app

# Copy requirements and app files
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir flask openai python-docx requests

# Expose Flask default port
EXPOSE 5000

# Run the application
CMD ["python", "app.py"]