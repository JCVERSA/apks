package androidx.datastore.preferences.protobuf;

import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Iterator;

class x extends InputStream {

    private Iterator f8609a;

    private ByteBuffer f8610b;

    private int f8611c = 0;

    private int f8612d;

    private int f8613e;

    private boolean f8614f;

    private byte[] f8615g;

    private int f8616h;

    private long f8617i;

    x(Iterable iterable) {
        this.f8609a = iterable.iterator();
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            this.f8611c++;
        }
        this.f8612d = -1;
        if (d()) {
            return;
        }
        this.f8610b = w.f8607e;
        this.f8612d = 0;
        this.f8613e = 0;
        this.f8617i = 0L;
    }

    private boolean d() {
        this.f8612d++;
        if (!this.f8609a.hasNext()) {
            return false;
        }
        ByteBuffer byteBuffer = (ByteBuffer) this.f8609a.next();
        this.f8610b = byteBuffer;
        this.f8613e = byteBuffer.position();
        if (this.f8610b.hasArray()) {
            this.f8614f = true;
            this.f8615g = this.f8610b.array();
            this.f8616h = this.f8610b.arrayOffset();
        } else {
            this.f8614f = false;
            this.f8617i = k1.k(this.f8610b);
            this.f8615g = null;
        }
        return true;
    }

    private void f(int i10) {
        int i11 = this.f8613e + i10;
        this.f8613e = i11;
        if (i11 == this.f8610b.limit()) {
            d();
        }
    }

    @Override
    public int read() {
        if (this.f8612d == this.f8611c) {
            return -1;
        }
        if (this.f8614f) {
            int i10 = this.f8615g[this.f8613e + this.f8616h] & 255;
            f(1);
            return i10;
        }
        int iW = k1.w(((long) this.f8613e) + this.f8617i) & 255;
        f(1);
        return iW;
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) {
        if (this.f8612d == this.f8611c) {
            return -1;
        }
        int iLimit = this.f8610b.limit();
        int i12 = this.f8613e;
        int i13 = iLimit - i12;
        if (i11 > i13) {
            i11 = i13;
        }
        if (this.f8614f) {
            System.arraycopy(this.f8615g, i12 + this.f8616h, bArr, i10, i11);
            f(i11);
        } else {
            int iPosition = this.f8610b.position();
            y.c(this.f8610b, this.f8613e);
            this.f8610b.get(bArr, i10, i11);
            y.c(this.f8610b, iPosition);
            f(i11);
        }
        return i11;
    }
}
