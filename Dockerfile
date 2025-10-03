# Use Python image
FROM python:3.11-slim

# Set working directory
WORKDIR /apptest

# Copy files
COPY requirements.txt .
COPY apptest.py .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port
EXPOSE 5000

# Run the app
CMD ["python", "apptest.py"]
