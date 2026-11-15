package defpackage;

import java.io.BufferedOutputStream;
import java.io.OutputStream;

public final class wu8 extends BufferedOutputStream {
    public boolean b;

    public wu8(OutputStream outputStream) {
        super(outputStream);
    }

    public void a(OutputStream outputStream) {
        zi.g(this.b);
        ((BufferedOutputStream) this).out = outputStream;
        ((BufferedOutputStream) this).count = 0;
        this.b = false;
    }

    @Override
    public void close() throws Throwable {
        this.b = true;
        flush();
        th = null;
        try {
            ((BufferedOutputStream) this).out.close();
        } catch (Throwable th) {
            if (th == null) {
                th = th;
            }
        }
        if (th != null) {
            blb.D0(th);
        }
    }

    public wu8(OutputStream outputStream, int i) {
        super(outputStream, i);
    }
}
