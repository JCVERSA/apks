package defpackage;

import android.net.Uri;
import com.google.android.exoplayer2.upstream.a;
import com.google.android.exoplayer2.upstream.b;
import java.util.Map;

public final class kea implements a {
    public final a a;
    public final rs1 b;
    public boolean c;
    public long d;

    public kea(a aVar, rs1 rs1Var) {
        this.a = (a) zi.e(aVar);
        this.b = (rs1) zi.e(rs1Var);
    }

    @Override
    public long a(b bVar) {
        long jA = this.a.a(bVar);
        this.d = jA;
        if (jA == 0) {
            return 0L;
        }
        if (bVar.h == -1 && jA != -1) {
            bVar = bVar.e(0L, jA);
        }
        this.c = true;
        this.b.a(bVar);
        return this.d;
    }

    @Override
    public void b(u5b u5bVar) {
        zi.e(u5bVar);
        this.a.b(u5bVar);
    }

    @Override
    public void close() {
        try {
            this.a.close();
        } finally {
            if (this.c) {
                this.c = false;
                this.b.close();
            }
        }
    }

    @Override
    public Map getResponseHeaders() {
        return this.a.getResponseHeaders();
    }

    @Override
    public Uri getUri() {
        return this.a.getUri();
    }

    @Override
    public int read(byte[] bArr, int i, int i2) {
        if (this.d == 0) {
            return -1;
        }
        int i3 = this.a.read(bArr, i, i2);
        if (i3 > 0) {
            this.b.write(bArr, i, i3);
            long j = this.d;
            if (j != -1) {
                this.d = j - ((long) i3);
            }
        }
        return i3;
    }
}
