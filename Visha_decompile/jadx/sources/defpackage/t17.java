package defpackage;

import java.io.IOException;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.Writer;

public class t17 extends Writer {
    public final StringBuffer b;
    public final Writer c;
    public final u17 d;

    public t17(u17 u17Var, StringBuffer stringBuffer, Writer writer) {
        this.d = u17Var;
        this.b = stringBuffer;
        this.c = writer;
    }

    @Override
    public void close() throws IOException {
        StringReader stringReader = new StringReader(this.b.toString());
        StringWriter stringWriter = new StringWriter();
        this.d.b(stringReader, stringWriter);
        this.c.write(stringWriter.toString());
    }

    @Override
    public void flush() throws IOException {
        this.c.flush();
    }

    @Override
    public void write(char[] cArr, int i, int i2) {
        this.b.append(cArr, i, i2);
    }
}
