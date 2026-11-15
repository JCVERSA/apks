package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import java.util.Map;

public final class j0 implements k {

    private final k f26655a;

    private final i f26656b;

    private boolean f26657c;

    private long f26658d;

    public j0(k kVar, i iVar) {
        this.f26655a = (k) com.google.android.exoplayer2.util.a.e(kVar);
        this.f26656b = (i) com.google.android.exoplayer2.util.a.e(iVar);
    }

    @Override
    public long a(n nVar) {
        long jA = this.f26655a.a(nVar);
        this.f26658d = jA;
        if (jA == 0) {
            return 0L;
        }
        if (nVar.f26672h == -1 && jA != -1) {
            nVar = nVar.f(0L, jA);
        }
        this.f26657c = true;
        this.f26656b.a(nVar);
        return this.f26658d;
    }

    @Override
    public void close() {
        try {
            this.f26655a.close();
        } finally {
            if (this.f26657c) {
                this.f26657c = false;
                this.f26656b.close();
            }
        }
    }

    @Override
    public void e(k0 k0Var) {
        com.google.android.exoplayer2.util.a.e(k0Var);
        this.f26655a.e(k0Var);
    }

    @Override
    public Map getResponseHeaders() {
        return this.f26655a.getResponseHeaders();
    }

    @Override
    public Uri getUri() {
        return this.f26655a.getUri();
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) {
        if (this.f26658d == 0) {
            return -1;
        }
        int i12 = this.f26655a.read(bArr, i10, i11);
        if (i12 > 0) {
            this.f26656b.write(bArr, i10, i12);
            long j10 = this.f26658d;
            if (j10 != -1) {
                this.f26658d = j10 - ((long) i12);
            }
        }
        return i12;
    }
}
