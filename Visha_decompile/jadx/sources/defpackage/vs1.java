package defpackage;

import com.google.android.exoplayer2.upstream.a;
import com.google.android.exoplayer2.upstream.b;
import java.io.InputStream;

public final class vs1 extends InputStream {
    public final a b;
    public final b c;
    public long g;
    public boolean e = false;
    public boolean f = false;
    public final byte[] d = new byte[1];

    public vs1(a aVar, b bVar) {
        this.b = aVar;
        this.c = bVar;
    }

    public final void b() {
        if (this.e) {
            return;
        }
        this.b.a(this.c);
        this.e = true;
    }

    @Override
    public void close() {
        if (this.f) {
            return;
        }
        this.b.close();
        this.f = true;
    }

    public void d() {
        b();
    }

    @Override
    public int read() {
        if (read(this.d) == -1) {
            return -1;
        }
        return this.d[0] & 255;
    }

    @Override
    public int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override
    public int read(byte[] bArr, int i, int i2) {
        zi.g(!this.f);
        b();
        int i3 = this.b.read(bArr, i, i2);
        if (i3 == -1) {
            return -1;
        }
        this.g += (long) i3;
        return i3;
    }
}
