package defpackage;

import java.io.IOException;
import java.io.OutputStream;

public class lea extends OutputStream {
    public OutputStream b;
    public OutputStream c;

    public lea(OutputStream outputStream, OutputStream outputStream2) {
        this.b = outputStream;
        this.c = outputStream2;
    }

    @Override
    public void close() throws IOException {
        this.b.close();
        this.c.close();
    }

    @Override
    public void flush() throws IOException {
        this.b.flush();
        this.c.flush();
    }

    @Override
    public void write(int i) throws IOException {
        this.b.write(i);
        this.c.write(i);
    }

    @Override
    public void write(byte[] bArr) throws IOException {
        this.b.write(bArr);
        this.c.write(bArr);
    }

    @Override
    public void write(byte[] bArr, int i, int i2) throws IOException {
        this.b.write(bArr, i, i2);
        this.c.write(bArr, i, i2);
    }
}
