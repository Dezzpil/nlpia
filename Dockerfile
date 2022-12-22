FROM jupyter/datascience-notebook:python-3.9.5

USER root
WORKDIR /home/jovyan/nlpia
COPY . .

RUN apt update && apt install -y g++ gcc python3-dev
RUN pip install --upgrade pip
RUN pip install -e .

WORKDIR /home/jovyan
RUN chown -R jovyan nlpia

EXPOSE 8888
