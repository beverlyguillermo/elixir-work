FROM ubuntu:17.10
MAINTAINER "beverly.guillermo@gmail.com"

RUN apt-get update && apt-get -qqy upgrade
RUN apt-get install -qqy --fix-missing --no-install-recommends \
  wget \
  locales


RUN locale-gen en_US.UTF-8
ENV LANG='en_US.UTF-8' LANGUAGE='en_US:en' LC_ALL='en_US.UTF-8'

# Erlang and Elixir
RUN wget --no-check-certificate https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb
RUN dpkg -i erlang-solutions_1.0_all.deb && rm erlang-solutions_1.0_all.deb
RUN wget --no-check-certificate https://packages.erlang-solutions.com/ubuntu/erlang_solutions.asc
RUN apt-key add erlang_solutions.asc && rm erlang_solutions.asc
RUN apt-get update && apt-get install -qqy --fix-missing --no-install-recommends \
  esl-erlang elixir


# Setup
RUN mkdir /coco_workers
COPY . /coco_workers
WORKDIR /coco_workers
