# Dockerfile for Flask App
FROM python:3.9-slim

# Set work directory
WORKDIR /app

# Copy requirements.txt first (before full source code) to enable layer caching
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Then copy the rest of your application code
COPY . .
COPY certs/ certs/

# Install Gunicorn
RUN pip install gunicorn

# Expose HTTPS port
EXPOSE 5000

# Run the app using Gunicorn (no TLS)
CMD ["gunicorn", "-b", "0.0.0.0:5000", "app:app"]
