FROM buildpack-deps:xenial
MAINTAINER Alexander Skiba <alexander.skiba@icg.tugraz.at>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update \
 && apt-get install -y \
    python3

RUN pip3 install pyflakes pep8 pep257 pylint
