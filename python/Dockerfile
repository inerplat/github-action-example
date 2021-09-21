FROM python:3.9
WORKDIR /run

RUN pip install --no-cache fastapi
RUN pip install --no-cache uvicorn

COPY app.py .

CMD ["/bin/sh", "-c", "uvicorn app:app --port 8080"]