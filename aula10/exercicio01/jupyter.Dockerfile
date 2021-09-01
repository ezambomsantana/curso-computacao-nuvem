FROM base

ARG spark_version=3.1.2
ARG jupyter_version=3.1.9

RUN apt install -y python3 python3-pip

RUN pip3 install pyspark==${spark_version} jupyterlab==${jupyter_version} wget

EXPOSE 8888

WORKDIR /opt/workspace

RUN curl https://github.com/ezambomsantana/curso-computacao-nuvem/raw/main/aula11/train_test_small.csv.zip -o dataset.zip
RUN apt install unzip
RUN ls

CMD jupyter lab --ip 0.0.0.0 --port=8888 --no-browser --allow-root --NotebookApp.token=