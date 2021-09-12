FROM rocker/r-base:latest
## create directories
RUN mkdir -p /data
RUN mkdir -p /code
RUN mkdir -p /output
## copy files
COPY /code/install_packages.R /code/install_packages.R
COPY /code/script.R /code/script.R
COPY /data/us-500.csv /data/us-500.csv
## install R-packages
RUN Rscript /code/install_packages.R


CMD Rscript /code/script.R