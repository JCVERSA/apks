package defpackage;

import com.google.android.gms.internal.ads.d;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

public final class hne extends ByteArrayOutputStream {
    public final d b;

    public hne(d dVar, int i) {
        this.b = dVar;
        ((ByteArrayOutputStream) this).buf = dVar.b(Math.max(i, 256));
    }

    public final void a(int i) {
        int i2 = ((ByteArrayOutputStream) this).count;
        if (i2 + i <= ((ByteArrayOutputStream) this).buf.length) {
            return;
        }
        d dVar = this.b;
        int i3 = i2 + i;
        byte[] bArrB = dVar.b(i3 + i3);
        System.arraycopy(((ByteArrayOutputStream) this).buf, 0, bArrB, 0, ((ByteArrayOutputStream) this).count);
        dVar.a(((ByteArrayOutputStream) this).buf);
        ((ByteArrayOutputStream) this).buf = bArrB;
    }

    @Override
    public final void close() throws IOException {
        this.b.a(((ByteArrayOutputStream) this).buf);
        ((ByteArrayOutputStream) this).buf = null;
        super.close();
    }

    public final void finalize() {
        this.b.a(((ByteArrayOutputStream) this).buf);
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
