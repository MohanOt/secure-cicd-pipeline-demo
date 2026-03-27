FROM python:3.12-slim

WORKDIR /app

# Improve pip reliability
RUN pip install --upgrade pip

COPY requirements.txt .

# Add timeout + retries (CRITICAL FIX)
RUN pip install --no-cache-dir --default-timeout=100 --retries 5 -r requirements.txt

COPY app ./app

EXPOSE 8000

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]