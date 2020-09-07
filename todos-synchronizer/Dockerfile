FROM python:3.7

RUN mkdir /myservice

WORKDIR /myservice
COPY requirements.txt /myservice
RUN pip install -r requirements.txt

COPY . /myservice
ENV FLASK_APP synchronize.py

CMD ["flask", "run", "--host", "0.0.0.0"]
