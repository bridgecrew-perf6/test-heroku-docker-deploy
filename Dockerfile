FROM python:3.9.12


COPY requirements.txt .
RUN pip3 install --upgrade pip \
    && pip3 install -r requirements.txt

COPY ./src /src
WORKDIR /src

CMD uvicorn main:app --port $PORT --host 0.0.0.0
