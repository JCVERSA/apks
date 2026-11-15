package defpackage;

import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.OutputStream;

public class zr6 extends OutputStream {
    public static final String d = "zr6";
    public by0 b;
    public BufferedOutputStream c;

    public zr6(by0 by0Var, OutputStream outputStream) {
        w7d.a("com.mq.mgmi.client.message.internal.nls.logcat", d);
        this.c = new BufferedOutputStream(outputStream);
    }

    @Override
    public void close() throws IOException {
        this.c.close();
    }

    @Override
    public void flush() throws IOException {
        this.c.flush();
    }

    @Override
    public void write(int i) throws IOException {
        this.c.write(i);
    }

    @Override
    public void write(byte[] bArr) throws IOException {
        this.c.write(bArr);
        this.b.c(bArr.length);
    }

    @Override
    public void write(byte[] bArr, int i, int i2) throws IOException {
        this.c.write(bArr, i, i2);
        this.b.c(i2);
    }
}
