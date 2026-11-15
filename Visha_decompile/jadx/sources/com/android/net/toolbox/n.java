package com.android.net.toolbox;

import java.io.ByteArrayOutputStream;
import java.io.IOException;

public final class n extends ByteArrayOutputStream {
    private final d a;

    public n(d dVar, int i) {
        this.a = dVar;
        ((ByteArrayOutputStream) this).buf = dVar.a(Math.max(i, 256));
    }

    private void a(int i) {
        int i2 = ((ByteArrayOutputStream) this).count;
        if (i2 + i <= ((ByteArrayOutputStream) this).buf.length) {
            return;
        }
        byte[] bArrA = this.a.a((i2 + i) * 2);
        System.arraycopy(((ByteArrayOutputStream) this).buf, 0, bArrA, 0, ((ByteArrayOutputStream) this).count);
        this.a.a(((ByteArrayOutputStream) this).buf);
        ((ByteArrayOutputStream) this).buf = bArrA;
    }

    @Override
    public final void close() throws IOException {
        this.a.a(((ByteArrayOutputStream) this).buf);
        ((ByteArrayOutputStream) this).buf = null;
        super.close();
    }

    public final void finalize() {
        this.a.a(((ByteArrayOutputStream) this).buf);
    }

    @Override
    public final synchronized void write(int i) {
        a(1);
        super.write(i);
    }

    @Override
    public final synchronized void write(byte[] bArr, int i, int i2) {
        a(i2);
        super.write(bArr, i, i2);
    }
}
