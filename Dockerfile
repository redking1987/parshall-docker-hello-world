FROM python:2.7-alpine

RUN mkdir /app
WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .

LABEL maintainer="Sean Parshall" \
	version="1.0"



# Expose port 22 for ssh
EXPOSE 22
CMD "echo" "Hello docker!"
CMD flask run --host=0.0.0.0 --port=8088

