# Read Me
## For converting .ipynb to PDF through `nbtopdf` container:
1. build the image by navigating to the nbtopdf folder and running
    ```sh
    docker build -t nbtopdf_image .
    ```

2. Create the container 
    ```sh
    docker run --name nbtopdf --rm -i -t nbtopdf_image
    ```

3. Run the conversion command inside the container
    ```sh
    jupyter nbconvert --to pdf notebook.ipynb
    exit
    ```
    This will convert the file from "notebook.ipynb" to "notebook.pdf" inside the container.

4. To see the PDF file that was generated, we can open up a new terminal before we exit the container and run
    ```sh
    docker cp nbtopdf:notebook.pdf notebook.pdf
    ```
    This will copy the file from the container, which can then be opened locally.