# FROM python:3.9-bullseye
FROM continuumio/miniconda3:latest

# install all dependencies
RUN conda install nbconvert
RUN apt-get update && apt-get install -y \
    pandoc \
    texlive-xetex texlive-fonts-recommended texlive-plain-generic \
    && rm -rf /var/lib/apt/lists/*

ENTRYPOINT [ "bash", "-c", "jupyter nbconvert --to pdf nbtopdf-data/input.ipynb --output=output.pdf" ]