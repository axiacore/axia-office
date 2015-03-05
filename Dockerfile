FROM resin/rpi-raspbian:wheezy-2015-01-15

RUN apt-get update && apt-get install -y python python-dev python-pip

RUN pip install flask

COPY server.py /app

CMD ['python', '/app/server.py']
