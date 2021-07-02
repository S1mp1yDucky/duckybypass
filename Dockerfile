FROM debian:sid

ENV LANG C.UTF-8
ENV USER root
ENV HOME /duckbypass
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update

RUN apt-get install -yq python3-pip

COPY . $HOME

WORKDIR $HOME

RUN pip install -r requirements.txt

ENTRYPOINT ["python", "duckbypass.py"]
