cp test_notebook.ipynb ./data/input.ipynb # first copy the test_notebook file into the data folder
docker run --rm -v $PWD/data:/convert/data --name nbtopdf-container nbtopdf # run nbtopdf container with data as a volume
mv ./data/output.pdf output.pdf # after converting the file we should have a file called output.pdf which can be copied back to the root directory
rm data/* # remove all the temp files after