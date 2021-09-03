FROM rocker/r-ubuntu:20.04

WORKDIR /app

RUN apt-get update

RUN apt-get install -y python3-pip
RUN pip3 install radian

RUN Rscript -e 'install.packages("renv")'

COPY renv.lock .
COPY renv ./renv
RUN Rscript -e "renv::init(project = getwd())"
RUN Rscript -e "renv::restore()"

COPY . .
