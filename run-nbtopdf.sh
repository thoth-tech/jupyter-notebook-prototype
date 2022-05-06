#docker build ./nbtopdf -t nbtopdf
#docker run --rm -it nbtopdf bash
docker run --rm -it nbtopdf bash -c "jupyter nbconvert --to pdf input.ipynb"
