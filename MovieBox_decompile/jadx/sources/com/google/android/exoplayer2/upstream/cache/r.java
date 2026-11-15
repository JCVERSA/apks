package com.google.android.exoplayer2.upstream.cache;

import com.google.android.exoplayer2.util.p0;
import java.io.BufferedOutputStream;
import java.io.OutputStream;

final class r extends BufferedOutputStream {

    private boolean f26614a;

    public r(OutputStream outputStream) {
        super(outputStream);
    }

    public void b(OutputStream outputStream) {
        com.google.android.exoplayer2.util.a.g(this.f26614a);
        ((BufferedOutputStream) this).out = outputStream;
        ((BufferedOutputStream) this).count = 0;
        this.f26614a = false;
    }

    @Override
    public void close() throws Throwable {
        this.f26614a = true;
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
            p0.Q0(th);
        }
    }

    public r(OutputStream outputStream, int i10) {
        super(outputStream, i10);
    }
}
