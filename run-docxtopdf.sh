mkdir docxtopdf-data
cp test_word.docx ./docxtopdf-data/input.docx # copy test doc into docxtopdf-data and rename to input.docx
docker run --rm -v $PWD/docxtopdf-data:/docxtopdf-data --name docxtopdf-container docxtopdf # run docxtopdf container with docxtopdf-data as a volume
mv ./docxtopdf-data/output.pdf output.pdf # after converting the file we should have a file called output.pdf which can be copied back to the root directory
rm -rf docxtopdf-data # remove temp dir after