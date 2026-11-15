package defpackage;

import java.io.BufferedReader;
import java.io.PrintWriter;
import java.io.Reader;
import java.io.Writer;
import java.util.Map;

public class u17 implements pga {
    public void b(Reader reader, Writer writer) {
        BufferedReader bufferedReader = reader instanceof BufferedReader ? (BufferedReader) reader : new BufferedReader(reader);
        PrintWriter printWriter = writer instanceof PrintWriter ? (PrintWriter) writer : new PrintWriter(writer);
        String line = bufferedReader.readLine();
        if (line != null && line.length() > 0) {
            printWriter.println(line);
        }
        while (true) {
            String line2 = bufferedReader.readLine();
            if (line2 == null) {
                return;
            } else {
                printWriter.println(line2);
            }
        }
    }

    @Override
    public Writer h(Writer writer, Map map) {
        return new t17(this, new StringBuffer(), writer);
    }
}
