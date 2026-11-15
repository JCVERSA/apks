package com.google.android.exoplayer2.source;

import android.net.Uri;
import defpackage.qw7;
import defpackage.u5b;
import defpackage.zi;
import java.util.Map;

public final class e implements com.google.android.exoplayer2.upstream.a {
    public final com.google.android.exoplayer2.upstream.a a;
    public final int b;
    public final a c;
    public final byte[] d;
    public int e;

    public interface a {
        void a(qw7 qw7Var);
    }

    public e(com.google.android.exoplayer2.upstream.a aVar, int i, a aVar2) {
        zi.a(i > 0);
        this.a = aVar;
        this.b = i;
        this.c = aVar2;
        this.d = new byte[1];
        this.e = i;
    }

    @Override
    public long a(com.google.android.exoplayer2.upstream.b bVar) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void b(u5b u5bVar) {
        zi.e(u5bVar);
        this.a.b(u5bVar);
    }

    public final boolean c() {
        if (this.a.read(this.d, 0, 1) == -1) {
            return false;
        }
        int i = (this.d[0] & 255) << 4;
        if (i == 0) {
            return true;
        }
        byte[] bArr = new byte[i];
        int i2 = i;
        int i3 = 0;
        while (i2 > 0) {
            int i4 = this.a.read(bArr, i3, i2);
            if (i4 == -1) {
                return false;
            }
            i3 += i4;
            i2 -= i4;
        }
        while (i > 0 && bArr[i - 1] == 0) {
            i--;
        }
        if (i > 0) {
            this.c.a(new qw7(bArr, i));
        }
        return true;
    }

    @Override
    public void close() {
        throw new UnsupportedOperationException();
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
        if (this.e == 0) {
            if (!c()) {
                return -1;
            }
            this.e = this.b;
        }
        int i3 = this.a.read(bArr, i, Math.min(this.e, i2));
        if (i3 != -1) {
            this.e -= i3;
        }
        return i3;
    }
}
