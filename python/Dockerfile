FROM python:3.9
WORKDIR /run

RUN pip install --no-cache fastapi
RUN pip install --no-cache uvicorn

COPY app.py .

CMD ["/bin/sh", "-c", "uvicorn app:app --host 0.0.0.0 --port 8080"]
