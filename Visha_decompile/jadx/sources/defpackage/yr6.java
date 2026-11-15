package defpackage;

import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;

public class yr6 extends InputStream {
    public final String b;
    public by0 c;
    public DataInputStream d;
    public ByteArrayOutputStream e;
    public int f;

    public yr6(by0 by0Var, InputStream inputStream) {
        String name = yr6.class.getName();
        this.b = name;
        w7d.a("com.mq.mgmi.client.message.internal.nls.logcat", name);
        this.d = new DataInputStream(inputStream);
        this.e = new ByteArrayOutputStream();
        this.f = -1;
    }

    @Override
    public int available() {
        return this.d.available();
    }

    @Override
    public void close() throws IOException {
        this.d.close();
    }

    @Override
    public int read() {
        return this.d.read();
    }
}
