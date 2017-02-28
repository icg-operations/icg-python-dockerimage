FROM buildpack-deps:xenial
MAINTAINER Alexander Skiba <alexander.skiba@icg.tugraz.at>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update \
 && apt-get install -y \
    python3 \
    python3-mock \
    python3-psycopg2 \
    python3-pip \
    python3-pytest \
    python3-pytest-mock \
    pyflakes3 \
    pylint3 \
    pep8 \
    pep257 \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*
