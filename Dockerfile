FROM python:3.9-slim
WORKDIR /app
COPY . .

RUN pip install -r requirment.txt
CMD {"python" , "app.py" }
