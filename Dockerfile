# syntax=docker/dockerfile:1
FROM python:3
WORKDIR /fastApiProject1
COPY requirements.txt /fastApiProject1/
RUN pip install -r requirements.txt
EXPOSE 8000
COPY . /fastApiProject1/
COPY ./entrypoint.sh /
ENTRYPOINT ["sh","/entrypoint.sh"]