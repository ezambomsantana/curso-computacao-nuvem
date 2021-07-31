FROM python:3.8

WORKDIR /code

COPY model.py .
COPY data1.txt .
COPY data2.txt .

# install dependencies
RUN pip3 install nltk
RUN pip3 install matplotlib

# command to run on container start
CMD [ "python3", "model.py"]