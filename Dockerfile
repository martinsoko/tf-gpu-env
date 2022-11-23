FROM tensorflow/tensorflow:latest-gpu
RUN apt-get update
RUN apt-get install -y tmux
ENV JUPYTER_CONFIG_DIR=/home/project/.jupyter
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
WORKDIR /home/project


