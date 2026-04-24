# Use WizOS hardened Python base image
FROM registry.os.wiz.io/python:3.12-latest

WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .

# Run as non-root (Security Best Practice)
USER 1000
CMD ["python", "main.py"]
