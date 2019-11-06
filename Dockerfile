FROM python:alpine

LABEL maintainer="SakuraGaara"

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories && \
    apk add tzdata && ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo 'Asia/Shanghai' > /etc/timezone && \
    apk add curl
    
RUN pip install flask

RUN mkdir /flask
COPY app /flask/app
COPY app.py /flask/app.py

EXPOSE 5000

ENTRYPOINT ["python","/flask/app.py"]
