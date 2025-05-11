FROM python:3.12-alpine

RUN pip install uv

COPY rsshub /app
WORKDIR /app

RUN uv pip install --system -r /app/requirements.txt

CMD [ "python", "rsshub_sse.py" ]