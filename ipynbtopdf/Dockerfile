FROM python:3.9-bullseye

COPY . .

RUN pip install nbconvert

RUN apt-get update && apt-get install -y \
    pandoc \
    texlive-xetex texlive-fonts-recommended texlive-plain-generic \
    && rm -rf /var/lib/apt/lists/*

CMD tail -f /dev/null