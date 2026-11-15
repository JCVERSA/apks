package com.yandex.mobile.ads.impl;

import java.io.IOException;
import java.io.InputStream;

public final class vv extends InputStream {
    private final tv a;
    private final xv b;
    private boolean d = false;
    private boolean e = false;
    private final byte[] c = new byte[1];

    public vv(s22 s22Var, xv xvVar) {
        this.a = s22Var;
        this.b = xvVar;
    }

    @Override
    public final void close() throws IOException {
        if (this.e) {
            return;
        }
        this.a.close();
        this.e = true;
    }

    @Override
    public final int read() throws IOException {
        byte[] bArr = this.c;
        if (read(bArr, 0, bArr.length) == -1) {
            return -1;
        }
        return this.c[0] & 255;
    }

    @Override
    public final int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        if (!this.e) {
            if (!this.d) {
                this.a.a(this.b);
                this.d = true;
            }
            int i3 = this.a.read(bArr, i, i2);
            if (i3 == -1) {
                return -1;
            }
            return i3;
        }
        throw new IllegalStateException();
    }
}
