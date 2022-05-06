docker run --name nbtopdf-container nbtopdf bash -c "jupyter nbconvert --to pdf input.ipynb --output=output.pdf" # run convert command through new container created from nbtopdf image
docker cp nbtopdf-container:convert/output.pdf output.pdf # copy the resulting output pdf
docker rm nbtopdf-container # remove container