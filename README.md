# Jupyter Notebook Team Prototype Docker Containers

## nbtopdf

To build the image from the Dockerfile
```sh
docker build ./nbtopdf -t nbtopdf
```

To open a container
```sh
docker run --rm -it nbtopdf bash
```

Run a test conversion using the script `run-nbtopdf.sh`
```sh
bash run-nbtopdf.sh
```

## docxtopdf