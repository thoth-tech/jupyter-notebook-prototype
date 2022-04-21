# Read Me
## For converting .ipynb to PDF through `nbtopdf` container:
1. build container by navigating to the nbtopdf folder and running
    ```
    docker build -t nbtopdf .
    ```
2. Run the command through the container by running
    ```
    docker run --rm nbtopdf jupyter nbconvert --to pdf notebook.ipynb
    ```
