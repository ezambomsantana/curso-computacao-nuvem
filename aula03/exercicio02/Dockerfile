FROM python:3.8

# imagem base

WORKDIR /code

RUN pip3 install nltk 
RUN pip3 install matplotlib

COPY . .

CMD ["python3", "model.py"]