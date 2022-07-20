# syntax=docker/dockerfile:1
FROM python:3
WORKDIR /fap
COPY requirements.txt /fap/
RUN pip install -r requirements.txt
COPY ./entrypoint.sh /
ENTRYPOINT ["sh","/entrypoint.sh"]