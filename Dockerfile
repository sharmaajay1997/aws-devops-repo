FROM python:3.9-slim

WORKDIR /app
COPY . .

# Install Python dependencies
RUN pip install -r requirements.txt

# Default command
CMD ["python", "app.py"]
