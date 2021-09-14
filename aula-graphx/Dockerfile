FROM jupyter/pyspark-notebook

WORKDIR /home/jovyan/work/

RUN $SPARK_HOME/bin/spark-shell --packages graphframes:graphframes:0.7.0-spark2.4-s_2.11

USER root
RUN wget https://repos.spark-packages.org/graphframes/graphframes/0.8.1-spark3.0-s_2.12/graphframes-0.8.1-spark3.0-s_2.12.jar -qO $SPARK_HOME/jars/graphframes.jar

COPY . .

RUN pip3 install graphframes