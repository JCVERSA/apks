package defpackage;

import android.net.Uri;
import com.google.android.exoplayer2.upstream.a;
import com.google.android.exoplayer2.upstream.b;
import java.util.Collections;
import java.util.Map;

public final class ox9 implements a {
    public final a a;
    public long b;
    public Uri c = Uri.EMPTY;
    public Map d = Collections.emptyMap();

    public ox9(a aVar) {
        this.a = (a) zi.e(aVar);
    }

    @Override
    public long a(b bVar) {
        this.c = bVar.a;
        this.d = Collections.emptyMap();
        long jA = this.a.a(bVar);
        this.c = (Uri) zi.e(getUri());
        this.d = getResponseHeaders();
        return jA;
    }

    @Override
    public void b(u5b u5bVar) {
        zi.e(u5bVar);
        this.a.b(u5bVar);
    }

    public long c() {
        return this.b;
    }

    @Override
    public void close() {
        this.a.close();
    }

    public Uri d() {
        return this.c;
    }

    public Map e() {
        return this.d;
    }

    public void f() {
        this.b = 0L;
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
        int i3 = this.a.read(bArr, i, i2);
        if (i3 != -1) {
            this.b += (long) i3;
        }
        return i3;
    }
}
