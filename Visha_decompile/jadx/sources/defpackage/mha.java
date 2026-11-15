package defpackage;

import java.io.IOException;
import java.io.Reader;
import java.io.StringWriter;
import java.io.Writer;

public abstract class mha {
    public static final long a(Reader reader, Writer writer, int i) throws IOException {
        y45.j(reader, "<this>");
        y45.j(writer, "out");
        char[] cArr = new char[i];
        int i2 = reader.read(cArr);
        long j = 0;
        while (i2 >= 0) {
            writer.write(cArr, 0, i2);
            j += (long) i2;
            i2 = reader.read(cArr);
        }
        return j;
    }

    public static long b(Reader reader, Writer writer, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 8192;
        }
        return a(reader, writer, i);
    }

    public static final String c(Reader reader) {
        y45.j(reader, "<this>");
        StringWriter stringWriter = new StringWriter();
        b(reader, stringWriter, 0, 2, null);
        String string = stringWriter.toString();
        y45.i(string, "toString(...)");
        return string;
    }
}
