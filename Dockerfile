FROM python:3.11-slim

# Install build dependencies
RUN apt-get update && apt-get install -y gcc build-essential

# Install your Python packages
COPY requirements.txt .
RUN pip install -r requirements.txt
