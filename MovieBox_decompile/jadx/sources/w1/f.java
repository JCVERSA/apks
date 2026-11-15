package w1;

import java.io.InputStream;

public final class f extends InputStream {

    private final androidx.media3.datasource.a f74091a;

    private final h f74092b;

    private long f74096f;

    private boolean f74094d = false;

    private boolean f74095e = false;

    private final byte[] f74093c = new byte[1];

    public f(androidx.media3.datasource.a aVar, h hVar) {
        this.f74091a = aVar;
        this.f74092b = hVar;
    }

    private void d() {
        if (this.f74094d) {
            return;
        }
        this.f74091a.a(this.f74092b);
        this.f74094d = true;
    }

    @Override
    public void close() {
        if (this.f74095e) {
            return;
        }
        this.f74091a.close();
        this.f74095e = true;
    }

    public void h() {
        d();
    }

    @Override
    public int read() {
        if (read(this.f74093c) == -1) {
            return -1;
        }
        return this.f74093c[0] & 255;
    }

    @Override
    public int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) {
        androidx.media3.common.util.a.g(!this.f74095e);
        d();
        int i12 = this.f74091a.read(bArr, i10, i11);
        if (i12 == -1) {
            return -1;
        }
        this.f74096f += (long) i12;
        return i12;
    }
}
