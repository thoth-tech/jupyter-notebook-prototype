package converter;

import org.apache.poi.xwpf.converter.pdf.PdfConverter;
import org.apache.poi.xwpf.converter.pdf.PdfOptions;
import org.apache.poi.xwpf.usermodel.XWPFDocument;


import java.io.*;
import java.util.Scanner;


public class Main {


    public static void main(String[] args) throws IOException {
        System.out.println("Press r to run conversion");
        boolean beginConversion = false;
        while (!beginConversion) {
            Scanner runCommandScanner = new Scanner(System.in);
            String runCommand = runCommandScanner.nextLine();
            if (runCommand.equals("r")) {
                beginConversion = true;

                //put all filenames in inputFile into array list
                String[] inputFileNames = new File("input").list();

                if (inputFileNames != null){
                    //Removes .docx from file name, and converts it to pdf.
                    for (int i = 0; i < inputFileNames.length; i++) {
                        try (InputStream is = new FileInputStream(new File("input/" + inputFileNames[i]));
                             OutputStream out = new FileOutputStream(new File("output/" + inputFileNames[i].substring(0, inputFileNames[i].length()-5) + ".pdf"));
                        ) {
                            // 1) Load DOCX into XWPFDocument
                            XWPFDocument document = new XWPFDocument(is);
                            // 2) Prepare Pdf options
                            PdfOptions options = PdfOptions.create();
                            // 3) Convert XWPFDocument to Pdf
                            PdfConverter.getInstance().convert(document, out, options);

                            System.out.println("File " + inputFileNames[i] + " was converted.");
                        } catch (Throwable e) {
                            e.printStackTrace();
                        }
                    }
                    int outputFolderLength = new File("output").list().length;
                    String outputMessage = outputFolderLength > 1 ?
                            "You successfully converted " + outputFolderLength + " files." :
                            "You successfully converted 1 file.";
                    System.out.println(outputMessage);
                } else {
                    System.out.println("There are no files to convert");
                }


            }
        }


    }


}
