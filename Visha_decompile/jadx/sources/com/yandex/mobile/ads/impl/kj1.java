package com.yandex.mobile.ads.impl;

import java.io.ByteArrayOutputStream;
import java.io.IOException;

public final class kj1 extends ByteArrayOutputStream {
    private final pm a;

    public kj1(pm pmVar, int i) {
        this.a = pmVar;
        ((ByteArrayOutputStream) this).buf = pmVar.a(Math.max(i, 256));
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
        int i2 = ((ByteArrayOutputStream) this).count + 1;
        if (i2 > ((ByteArrayOutputStream) this).buf.length) {
            byte[] bArrA = this.a.a(i2 * 2);
            System.arraycopy(((ByteArrayOutputStream) this).buf, 0, bArrA, 0, ((ByteArrayOutputStream) this).count);
            this.a.a(((ByteArrayOutputStream) this).buf);
            ((ByteArrayOutputStream) this).buf = bArrA;
        }
        super.write(i);
    }

    @Override
    public final synchronized void write(byte[] bArr, int i, int i2) {
        int i3 = ((ByteArrayOutputStream) this).count + i2;
        if (i3 > ((ByteArrayOutputStream) this).buf.length) {
            byte[] bArrA = this.a.a(i3 * 2);
            System.arraycopy(((ByteArrayOutputStream) this).buf, 0, bArrA, 0, ((ByteArrayOutputStream) this).count);
            this.a.a(((ByteArrayOutputStream) this).buf);
            ((ByteArrayOutputStream) this).buf = bArrA;
        }
        super.write(bArr, i, i2);
    }
}
