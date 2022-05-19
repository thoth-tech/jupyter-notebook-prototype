mkdir nbtopdf-data
cp test_notebook.ipynb ./nbtopdf-data/input.ipynb # first copy the test_notebook file into the data folder
docker run --rm -v $PWD/nbtopdf-data:/nbtopdf-data --name nbtopdf-container nbtopdf # run nbtopdf container with data as a volume
mv ./nbtopdf-data/output.pdf output.pdf # after converting the file we should have a file called output.pdf which can be copied back to the root directory
rm -rf nbtopdf-data # remove temp dir after