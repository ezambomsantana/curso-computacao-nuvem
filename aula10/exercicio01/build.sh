# -- Building the Images

docker build \
  -f base.Dockerfile \
  -t ezambomsantana/base .

docker build \
  -f spark-master.Dockerfile \
  -t ezambomsantana/spark-master .

docker build \
  -f spark-worker.Dockerfile \
  -t ezambomsantana/spark-worker .

docker build \
  -f jupyter.Dockerfile \
  -t ezambomsantana/jupyter .