# Use official Python runtime as base image
FROM python:3.10-slim

# Set working directory in the container
WORKDIR /app

# Install system dependencies (git and cleanup after)
RUN apt-get update && apt-get install -y --no-install-recommends git \
    && rm -rf /var/lib/apt/lists/*

# Copy requirements (could be empty at first)
COPY requirements.txt .

# Install Python dependencies
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

# Copy source code (notebooks, etc.)
COPY . .
