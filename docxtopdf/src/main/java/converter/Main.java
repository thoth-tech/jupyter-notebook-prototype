package converter;

import org.apache.poi.xwpf.converter.pdf.PdfConverter;
import org.apache.poi.xwpf.converter.pdf.PdfOptions;
import org.apache.poi.xwpf.usermodel.XWPFDocument;

import java.io.*;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) throws IOException {
        //put all filenames in inputFile into array list
        File inputFile = new File("./tmp/data/input.docx");
        if (inputFile != null) {
            //Removes .docx from file name, and converts it to pdf.
            try (
                    InputStream is = new FileInputStream(inputFile);
                    OutputStream out = new FileOutputStream(new File("./tmp/data/output.pdf"));
            ) {
                // 1) Load DOCX into XWPFDocument
                XWPFDocument document = new XWPFDocument(is);
                // 2) Prepare Pdf options
                PdfOptions options = PdfOptions.create();
                // 3) Convert XWPFDocument to Pdf
                PdfConverter.getInstance().convert(document, out, options);
            } catch (Throwable e) {
                e.printStackTrace();
            }
            //Program converts one file at a time, so the data folder should have one file pre-conversion and two post-conversion.
            //Verifies there is one extra file in the data folder.
            //See README for output codes
            int dataFolderLength = new File("./tmp/data").list().length;
            String outputMessage = dataFolderLength == 2 ? "0" : "1";
            System.out.println(outputMessage);
        } else {
            System.out.println("101");
        }
    }
}
