FROM python:3.11-slim

WORKDIR /app

COPY . .

RUN pip install --no-cache-dir -e .

ENV PYTHONPATH=.

CMD ["streamlit", "run","app.py","--server.port=8501","--server.address=0.0.0.0","--server.headless=true"]