package androidx.media3.datasource.cache;

import androidx.media3.common.util.a1;
import java.io.BufferedOutputStream;
import java.io.OutputStream;

final class r extends BufferedOutputStream {

    private boolean f10555a;

    public r(OutputStream outputStream) {
        super(outputStream);
    }

    public void b(OutputStream outputStream) {
        androidx.media3.common.util.a.g(this.f10555a);
        ((BufferedOutputStream) this).out = outputStream;
        ((BufferedOutputStream) this).count = 0;
        this.f10555a = false;
    }

    @Override
    public void close() throws Throwable {
        this.f10555a = true;
        flush();
        th = null;
        try {
            ((BufferedOutputStream) this).out.close();
        } catch (Throwable th2) {
            if (th == null) {
                th = th2;
            }
        }
        if (th != null) {
            a1.m1(th);
        }
    }

    public r(OutputStream outputStream, int i10) {
        super(outputStream, i10);
    }
}
