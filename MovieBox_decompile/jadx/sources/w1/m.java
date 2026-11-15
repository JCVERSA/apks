package w1;

import android.net.Uri;
import java.util.Map;

public final class m implements androidx.media3.datasource.a {

    private final androidx.media3.datasource.a f74127a;

    private final d f74128b;

    private boolean f74129c;

    private long f74130d;

    public m(androidx.media3.datasource.a aVar, d dVar) {
        this.f74127a = (androidx.media3.datasource.a) androidx.media3.common.util.a.e(aVar);
        this.f74128b = (d) androidx.media3.common.util.a.e(dVar);
    }

    @Override
    public long a(h hVar) {
        long jA = this.f74127a.a(hVar);
        this.f74130d = jA;
        if (jA == 0) {
            return 0L;
        }
        if (hVar.f74104h == -1 && jA != -1) {
            hVar = hVar.f(0L, jA);
        }
        this.f74129c = true;
        this.f74128b.a(hVar);
        return this.f74130d;
    }

    @Override
    public void c(n nVar) {
        androidx.media3.common.util.a.e(nVar);
        this.f74127a.c(nVar);
    }

    @Override
    public void close() {
        try {
            this.f74127a.close();
        } finally {
            if (this.f74129c) {
                this.f74129c = false;
                this.f74128b.close();
            }
        }
    }

    @Override
    public Map getResponseHeaders() {
        return this.f74127a.getResponseHeaders();
    }

    @Override
    public Uri getUri() {
        return this.f74127a.getUri();
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) {
        if (this.f74130d == 0) {
            return -1;
        }
        int i12 = this.f74127a.read(bArr, i10, i11);
        if (i12 > 0) {
            this.f74128b.write(bArr, i10, i12);
            long j10 = this.f74130d;
            if (j10 != -1) {
                this.f74130d = j10 - ((long) i12);
            }
        }
        return i12;
    }
}
