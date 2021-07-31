FROM python:3.8

WORKDIR /code

RUN mkdir data

COPY data/data1.txt data/data1.txt
COPY data/data2.txt data/data2.txt

COPY model.py .

# install dependencies
RUN pip3 install nltk
RUN pip3 install matplotlib

# command to run on container start
CMD [ "python3", "model.py"]