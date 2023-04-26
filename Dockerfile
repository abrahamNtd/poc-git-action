FROM python:latest

LABEL Maintainer="abraham.morales@globant.com"

RUN apt-get update && apt-get install -y zip unzip
RUN pip3 install paramiko jumpssh

COPY deploy.py ./

CMD ["sh", "-c", "python ./deploy.py \"${user}\" \"${password}\" "]
