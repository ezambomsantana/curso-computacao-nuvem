# set base image (host OS)
FROM jupyter/scipy-notebook:latest

# set the working directory in the container
WORKDIR /home/jovyan/work/

RUN mkdir images

# copy the project files to the working directory
COPY . .

RUN pip3 install boto3
RUN pip3 install nltk 

# install dependencies
# RUN pip install -r requirements.txt
