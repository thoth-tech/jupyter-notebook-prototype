#FROM python:3.9-bullseye
FROM continuumio/miniconda3:latest

COPY notebook.ipynb .

RUN conda install nbconvert
# if we need additional python libraries, they can be installed in the container here.

RUN apt-get update && apt-get install -y \
    pandoc \
    texlive-xetex texlive-fonts-recommended texlive-plain-generic \
    && rm -rf /var/lib/apt/lists/*