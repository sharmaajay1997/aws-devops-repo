FROM python:3.9-slim

WORKDIR /app
COPY . .

# Correct requirements file
RUN pip install -r requirement.txt

# Run the app
CMD ["python", "app.py"]
