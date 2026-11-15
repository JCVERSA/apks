package defpackage;

import java.io.IOException;
import java.io.Writer;

public final class lb3 extends Writer {
    @Override
    public void close() {
    }

    @Override
    public void flush() {
    }

    @Override
    public void write(char[] cArr, int i, int i2) throws IOException {
        if (i2 > 0) {
            throw new IOException("This transform does not allow nested content.");
        }
    }
}
