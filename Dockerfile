FROM python:3.13.4-alpine3.22

WORKDIR /app

COPY . .

RUN pip install --no-cache-dir fastapi uvicorn[standard] && \
    pip install --no-cache-dir -r requirements.txt || true

EXPOSE 8000

CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]

