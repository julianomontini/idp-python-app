FROM python:3.12-alpine

WORKDIR /app

COPY ./requirements.txt .

RUN pip install -r ./requirements.txt

COPY ./src/ ./src/

CMD ["python","/app/src/app.py"]