package com.google.android.exoplayer2.source;

import android.net.Uri;
import com.google.android.exoplayer2.upstream.k0;
import java.util.Map;

final class k implements com.google.android.exoplayer2.upstream.k {

    private final com.google.android.exoplayer2.upstream.k f25556a;

    private final int f25557b;

    private final a f25558c;

    private final byte[] f25559d;

    private int f25560e;

    public interface a {
        void a(com.google.android.exoplayer2.util.d0 d0Var);
    }

    public k(com.google.android.exoplayer2.upstream.k kVar, int i10, a aVar) {
        com.google.android.exoplayer2.util.a.a(i10 > 0);
        this.f25556a = kVar;
        this.f25557b = i10;
        this.f25558c = aVar;
        this.f25559d = new byte[1];
        this.f25560e = i10;
    }

    private boolean f() {
        if (this.f25556a.read(this.f25559d, 0, 1) == -1) {
            return false;
        }
        int i10 = (this.f25559d[0] & 255) << 4;
        if (i10 == 0) {
            return true;
        }
        byte[] bArr = new byte[i10];
        int i11 = i10;
        int i12 = 0;
        while (i11 > 0) {
            int i13 = this.f25556a.read(bArr, i12, i11);
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
            this.f25558c.a(new com.google.android.exoplayer2.util.d0(bArr, i10));
        }
        return true;
    }

    @Override
    public long a(com.google.android.exoplayer2.upstream.n nVar) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void close() {
        throw new UnsupportedOperationException();
    }

    @Override
    public void e(k0 k0Var) {
        com.google.android.exoplayer2.util.a.e(k0Var);
        this.f25556a.e(k0Var);
    }

    @Override
    public Map getResponseHeaders() {
        return this.f25556a.getResponseHeaders();
    }

    @Override
    public Uri getUri() {
        return this.f25556a.getUri();
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) {
        if (this.f25560e == 0) {
            if (!f()) {
                return -1;
            }
            this.f25560e = this.f25557b;
        }
        int i12 = this.f25556a.read(bArr, i10, Math.min(this.f25560e, i11));
        if (i12 != -1) {
            this.f25560e -= i12;
        }
        return i12;
    }
}
