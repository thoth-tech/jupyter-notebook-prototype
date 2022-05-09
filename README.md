# Jupyter Notebook Team Prototype Docker Containers

## nbtopdf

First make sure to build the image from the Dockerfile
```sh
docker build ./nbtopdf -t nbtopdf
```

Run the conversion process using the script `run-nbtopdf.sh`
```sh
bash run-nbtopdf.sh
```

If everything went correctly, the converted file called "output.pdf" should be moved into the root directory.

## docxtopdf