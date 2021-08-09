FROM python:3.8

# imagem base

WORKDIR /code

RUN pip3 install nltk 
RUN pip3 install matplotlib

RUN pip3 install pandas

RUN pip3 install seaborn

COPY . .

CMD ["python3", "model.py", "data/data2.txt"]