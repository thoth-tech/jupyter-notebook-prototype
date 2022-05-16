# Jupyter Notebook Team Prototype Docker Containers

## nbtopdf

First make sure to build the image from the Dockerfile
```sh
docker build ./nbtopdf -t nbtopdf
```
The `-t` option specifies that the image will be called 'nbtopdf'.

Run the conversion process using the "run-nbtopdf.sh" bash script
```sh
bash run-nbtopdf.sh
```

If everything went correctly, the converted file called "output.pdf" should be moved into the root directory.

## docxtopdf

First make sure to build the image from the Dockerfile
```sh
docker build ./docxtopdf -t docxtopdf
```
The `-t` option specifies that the image will be called 'docxtopdf'.

docker run --rm -it --name docxtopdf-container docxtopdf