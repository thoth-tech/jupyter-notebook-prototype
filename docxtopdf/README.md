
# docx-to-pdf Converter

This application will convert a .docx file to .pdf.

## Input and Output
The application will make a reference of all file names in src/main/input. Using this file name and its path,
it will convert all files and place a .pdf copy in the output folder. All files will maintain their file name
except the file type suffix.

# Docker
## Building the Docker Image
    1. Navigate to the docxtopdf directory where the Dockerfile is stored.
    2. Run the command: 
    
    docker build -t <image-name> .

## Running the Docker Image
    1. Navigate to the docxtopdf directory where the Dockerfile is stored.
    2. Run the command: 
    
    docker run -i -t <image-name> r 

# Compiling without Docker
    1. Make sure there is a file in docxtopdf/src/main/input before running code.
    2. Navigate to docxtopdf/src/main in your CLI
    3. Run the command:

    java -classpath "java/libs/*" java/converter/Main.java

# Considerations
In order to run the program, you must have a file to convert in the src/main/input folder before running the application.

# Response Codes
0 - The program successfully converted all files in the src/main/input directory to .pdf, and placed
them in the src/main/output directory.

101 - The program did not find any files in the src/main/input directory to convert.

102 - The program found files in the src/main/input directory, but either all or some of the files
were not converted.

### Author
Jordan Litsas

