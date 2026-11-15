package androidx.media3.exoplayer.source;

import android.net.Uri;
import java.util.Map;

final class n implements androidx.media3.datasource.a {

    private final androidx.media3.datasource.a f12545a;

    private final int f12546b;

    private final a f12547c;

    private final byte[] f12548d;

    private int f12549e;

    public interface a {
        void a(androidx.media3.common.util.j0 j0Var);
    }

    public n(androidx.media3.datasource.a aVar, int i10, a aVar2) {
        androidx.media3.common.util.a.a(i10 > 0);
        this.f12545a = aVar;
        this.f12546b = i10;
        this.f12547c = aVar2;
        this.f12548d = new byte[1];
        this.f12549e = i10;
    }

    private boolean d() {
        if (this.f12545a.read(this.f12548d, 0, 1) == -1) {
            return false;
        }
        int i10 = (this.f12548d[0] & 255) << 4;
        if (i10 == 0) {
            return true;
        }
        byte[] bArr = new byte[i10];
        int i11 = i10;
        int i12 = 0;
        while (i11 > 0) {
            int i13 = this.f12545a.read(bArr, i12, i11);
            if (i13 == -1) {
                return false;
            }
            i12 += i13;
            i11 -= i13;
        }
        while (i10 > 0 && bArr[i10 - 1] == 0) {
            i10--;
        }
        if (i10 > 0) {
            this.f12547c.a(new androidx.media3.common.util.j0(bArr, i10));
        }
        return true;
    }

    @Override
    public long a(w1.h hVar) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void c(w1.n nVar) {
        androidx.media3.common.util.a.e(nVar);
        this.f12545a.c(nVar);
    }

    @Override
    public void close() {
        throw new UnsupportedOperationException();
    }

    @Override
    public Map getResponseHeaders() {
        return this.f12545a.getResponseHeaders();
    }

    @Override
    public Uri getUri() {
        return this.f12545a.getUri();
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) {
        if (this.f12549e == 0) {
            if (!d()) {
                return -1;
            }
            this.f12549e = this.f12546b;
        }
        int i12 = this.f12545a.read(bArr, i10, Math.min(this.f12549e, i11));
        if (i12 != -1) {
            this.f12549e -= i12;
        }
        return i12;
    }
}
