package com.yandex.mobile.ads.impl;

import android.net.Uri;
import androidx.annotation.Nullable;
import java.io.IOException;
import java.util.List;
import java.util.Map;

final class oi0 implements tv {
    private final tv a;
    private final int b;
    private final a c;
    private final byte[] d;
    private int e;

    public interface a {
    }

    public oi0(s22 s22Var, int i, a aVar) {
        hg.a(i > 0);
        this.a = s22Var;
        this.b = i;
        this.c = aVar;
        this.d = new byte[1];
        this.e = i;
    }

    @Override
    public final void a(d72 d72Var) {
        d72Var.getClass();
        this.a.a(d72Var);
    }

    @Override
    public final void close() {
        throw new UnsupportedOperationException();
    }

    @Override
    public final Map<String, List<String>> getResponseHeaders() {
        return this.a.getResponseHeaders();
    }

    @Override
    @Nullable
    public final Uri getUri() {
        return this.a.getUri();
    }

    @Override
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        if (this.e == 0) {
            int i3 = 0;
            if (this.a.read(this.d, 0, 1) != -1) {
                int i4 = (this.d[0] & 255) << 4;
                if (i4 != 0) {
                    byte[] bArr2 = new byte[i4];
                    int i5 = i4;
                    while (i5 > 0) {
                        int i6 = this.a.read(bArr2, i3, i5);
                        if (i6 != -1) {
                            i3 += i6;
                            i5 -= i6;
                        }
                    }
                    while (i4 > 0 && bArr2[i4 - 1] == 0) {
                        i4--;
                    }
                    if (i4 > 0) {
                        ((em1.a) this.c).a(new ag1(i4, bArr2));
                    }
                }
                this.e = this.b;
            }
            return -1;
        }
        int i7 = this.a.read(bArr, i, Math.min(this.e, i2));
        if (i7 != -1) {
            this.e -= i7;
        }
        return i7;
    }

    @Override
    public final long a(xv xvVar) {
        throw new UnsupportedOperationException();
    }
}
