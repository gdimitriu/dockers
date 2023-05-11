FROM python:3.9.14-slim
RUN mkdir /app
WORKDIR /app
ADD . /app
RUN pip3 install -r requirements.txt
CMD ["python","helloworld.py"]
