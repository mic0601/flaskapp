FROM python:alpine

LABEL maintainer="SakuraGaara"

RUN pip install flask

RUN mkdir /flask
COPY app /flask/app
COPY app.py /flask/app.py

EXPOSE 5000

ENTRYPOINT ["python","/flask/app.py"]
