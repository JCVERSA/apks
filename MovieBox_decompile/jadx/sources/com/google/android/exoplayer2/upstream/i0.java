package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import java.util.Collections;
import java.util.Map;

public final class i0 implements k {

    private final k f26651a;

    private long f26652b;

    private Uri f26653c = Uri.EMPTY;

    private Map f26654d = Collections.emptyMap();

    public i0(k kVar) {
        this.f26651a = (k) com.google.android.exoplayer2.util.a.e(kVar);
    }

    @Override
    public long a(n nVar) {
        this.f26653c = nVar.f26665a;
        this.f26654d = Collections.emptyMap();
        long jA = this.f26651a.a(nVar);
        this.f26653c = (Uri) com.google.android.exoplayer2.util.a.e(getUri());
        this.f26654d = getResponseHeaders();
        return jA;
    }

    @Override
    public void close() {
        this.f26651a.close();
    }

    @Override
    public void e(k0 k0Var) {
        com.google.android.exoplayer2.util.a.e(k0Var);
        this.f26651a.e(k0Var);
    }

    public long f() {
        return this.f26652b;
    }

    @Override
    public Map getResponseHeaders() {
        return this.f26651a.getResponseHeaders();
    }

    @Override
    public Uri getUri() {
        return this.f26651a.getUri();
    }

    public Uri h() {
        return this.f26653c;
    }

    public Map i() {
        return this.f26654d;
    }

    public void j() {
        this.f26652b = 0L;
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) {
        int i12 = this.f26651a.read(bArr, i10, i11);
        if (i12 != -1) {
            this.f26652b += (long) i12;
        }
        return i12;
    }
}
