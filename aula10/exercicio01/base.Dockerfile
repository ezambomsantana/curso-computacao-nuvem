FROM openjdk:8-jre-slim

ARG spark_version=3.1.2
ARG hadoop_version=3.2

RUN mkdir -p /opt/workspace
RUN apt update -y && apt install -y curl
RUN curl https://archive.apache.org/dist/spark/spark-${spark_version}/spark-${spark_version}-bin-hadoop${hadoop_version}.tgz -o spark.tgz
RUN tar -xf spark.tgz
RUN mv spark-${spark_version}-bin-hadoop${hadoop_version} /usr/bin/
RUN mkdir /usr/bin/spark-${spark_version}-bin-hadoop${hadoop_version}/logs
RUN rm spark.tgz

ENV SPARK_HOME /usr/bin/spark-${spark_version}-bin-hadoop${hadoop_version}
ENV SPARK_MASTER_HOST spark-master 
ENV SPARK_MASTER_PORT 7077
ENV PYSPARK_PYTHON python3

WORKDIR ${SPARK_HOME}
CMD ["bash"]

# docker build -f spark-master.Dockerfile  -t spark-master .

# docker run --network spark-cluster --network-alias spark-master 
# -p 8080:8080 -p 7077:7077 spark-master

# docker run --network spark-cluster --network-alias spark-worker-1 
# -p 8081:8081 -p 7077:7077 spark-worker