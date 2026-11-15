package com.google.android.exoplayer2.upstream;

import java.io.InputStream;

public final class l extends InputStream {

    private final k f26659a;

    private final n f26660b;

    private long f26664f;

    private boolean f26662d = false;

    private boolean f26663e = false;

    private final byte[] f26661c = new byte[1];

    public l(k kVar, n nVar) {
        this.f26659a = kVar;
        this.f26660b = nVar;
    }

    private void d() {
        if (this.f26662d) {
            return;
        }
        this.f26659a.a(this.f26660b);
        this.f26662d = true;
    }

    @Override
    public void close() {
        if (this.f26663e) {
            return;
        }
        this.f26659a.close();
        this.f26663e = true;
    }

    public void h() {
        d();
    }

    @Override
    public int read() {
        if (read(this.f26661c) == -1) {
            return -1;
        }
        return this.f26661c[0] & 255;
    }

    @Override
    public int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) {
        com.google.android.exoplayer2.util.a.g(!this.f26663e);
        d();
        int i12 = this.f26659a.read(bArr, i10, i11);
        if (i12 == -1) {
            return -1;
        }
        this.f26664f += (long) i12;
        return i12;
    }
}
