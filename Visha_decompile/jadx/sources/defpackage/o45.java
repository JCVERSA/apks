package defpackage;

import java.io.IOException;
import java.io.Writer;

public class o45 extends Writer {
    public final Writer b;
    public final p45.a c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o45(p45.a aVar, Object obj, Writer writer) {
        super(obj);
        this.c = aVar;
        this.b = writer;
    }

    @Override
    public void close() {
    }

    @Override
    public void flush() throws IOException {
        this.b.flush();
    }

    @Override
    public void write(char[] cArr, int i, int i2) throws IOException {
        this.b.write(cArr, i, i2);
    }
}
