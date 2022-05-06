# FROM python:3.9-bullseye
FROM continuumio/miniconda3:latest

# install all dependencies
RUN conda install nbconvert
RUN apt-get update && apt-get install -y \
    pandoc \
    texlive-xetex texlive-fonts-recommended texlive-plain-generic \
    && rm -rf /var/lib/apt/lists/*

# create a working directory
RUN mkdir /convert
WORKDIR /convert

# copies the input ipynb to the working directory
# in the real version of this, the input will not need to be copied, and will instead be already in a shared volume that other containers will be able to access.
COPY input.ipynb .