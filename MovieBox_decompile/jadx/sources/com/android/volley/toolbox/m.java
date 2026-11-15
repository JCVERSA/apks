package com.android.volley.toolbox;

import java.io.ByteArrayOutputStream;
import java.io.IOException;

public class m extends ByteArrayOutputStream {

    private final ByteArrayPool f18692a;

    public m(ByteArrayPool byteArrayPool, int i10) {
        this.f18692a = byteArrayPool;
        ((ByteArrayOutputStream) this).buf = byteArrayPool.a(Math.max(i10, 256));
    }

    private void b(int i10) {
        int i11 = ((ByteArrayOutputStream) this).count;
        if (i11 + i10 <= ((ByteArrayOutputStream) this).buf.length) {
            return;
        }
        byte[] bArrA = this.f18692a.a((i11 + i10) * 2);
        System.arraycopy(((ByteArrayOutputStream) this).buf, 0, bArrA, 0, ((ByteArrayOutputStream) this).count);
        this.f18692a.b(((ByteArrayOutputStream) this).buf);
        ((ByteArrayOutputStream) this).buf = bArrA;
    }

    @Override
    public void close() throws IOException {
        this.f18692a.b(((ByteArrayOutputStream) this).buf);
        ((ByteArrayOutputStream) this).buf = null;
        super.close();
    }

    public void finalize() {
        this.f18692a.b(((ByteArrayOutputStream) this).buf);
    }

    @Override
    public synchronized void write(byte[] bArr, int i10, int i11) {
        b(i11);
        super.write(bArr, i10, i11);
    }

    @Override
    public synchronized void write(int i10) {
        b(1);
        super.write(i10);
    }
}
