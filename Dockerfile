FROM python:2.7.11-alpine

RUN apk update && apk add gcc musl-dev
RUN pip install twisted

ADD . /app
WORKDIR /app

VOLUME /etc/eth-proxy.conf
CMD ["python", "eth-proxy.py", "/etc/eth-proxy.conf"]
