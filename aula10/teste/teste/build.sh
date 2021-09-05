SPARK_VERSION="3.0.0"
HADOOP_VERSION="2.7"
JUPYTERLAB_VERSION="2.1.5"

# -- Building the Images

docker build \
  -f base.Dockerfile \
  -t base .

docker build \
  --build-arg spark_version="${SPARK_VERSION}" \
  --build-arg hadoop_version="${HADOOP_VERSION}" \
  -f spark.Dockerfile \
  -t spark .

docker build \
  -f master.Dockerfile \
  -t master .

docker build \
  -f worker.Dockerfile \
  -t worker .

docker build \
  --build-arg spark_version="${SPARK_VERSION}" \
  --build-arg jupyterlab_version="${JUPYTERLAB_VERSION}" \
  -f jupyter.Dockerfile \
  -t jupyter .