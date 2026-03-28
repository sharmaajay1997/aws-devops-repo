FROM python:3.9-slim

WORKDIR /app
COPY . .

# Correct requirements file
RUN pip install -r requirements.txt

# Run the app
CMD ["python", "app.py"]
