FROM daskdev/dask:latest

RUN pip3 install dask-ml graphviz
RUN pip3 install matplotlib
