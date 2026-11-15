package defpackage;

import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Iterator;

public final class ati extends InputStream {
    public Iterator b;
    public ByteBuffer c;
    public int d = 0;
    public int e;
    public int f;
    public boolean g;
    public byte[] h;
    public int i;
    public long j;

    public ati(Iterable iterable) {
        this.b = iterable.iterator();
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            this.d++;
        }
        this.e = -1;
        if (b()) {
            return;
        }
        this.c = zsi.c;
        this.e = 0;
        this.f = 0;
        this.j = 0L;
    }

    public final void a(int i) {
        int i2 = this.f + i;
        this.f = i2;
        if (i2 == this.c.limit()) {
            b();
        }
    }

    public final boolean b() {
        ByteBuffer byteBuffer;
        do {
            this.e++;
            if (!this.b.hasNext()) {
                return false;
            }
            byteBuffer = (ByteBuffer) this.b.next();
            this.c = byteBuffer;
        } while (!byteBuffer.hasRemaining());
        this.f = this.c.position();
        if (this.c.hasArray()) {
            this.g = true;
            this.h = this.c.array();
            this.i = this.c.arrayOffset();
        } else {
            this.g = false;
            this.j = vui.m(this.c);
            this.h = null;
        }
        return true;
    }

    @Override
    public final int read() {
        if (this.e == this.d) {
            return -1;
        }
        if (this.g) {
            int i = this.h[this.f + this.i] & 255;
            a(1);
            return i;
        }
        int i2 = vui.i(((long) this.f) + this.j) & 255;
        a(1);
        return i2;
    }

    @Override
    public final int read(byte[] bArr, int i, int i2) {
        if (this.e == this.d) {
            return -1;
        }
        int iLimit = this.c.limit();
        int i3 = this.f;
        int i4 = iLimit - i3;
        if (i2 > i4) {
            i2 = i4;
        }
        if (this.g) {
            System.arraycopy(this.h, i3 + this.i, bArr, i, i2);
            a(i2);
        } else {
            int iPosition = this.c.position();
            this.c.position(this.f);
            this.c.get(bArr, i, i2);
            this.c.position(iPosition);
            a(i2);
        }
        return i2;
    }
}
