package com.yandex.mobile.ads.impl;

import android.net.Uri;
import androidx.annotation.Nullable;
import java.io.IOException;
import java.util.List;
import java.util.Map;

public final class o42 implements tv {
    private final tv a;
    private final sv b;
    private boolean c;
    private long d;

    public o42(tv tvVar, vm vmVar) {
        this.a = (tv) hg.a(tvVar);
        this.b = (sv) hg.a(vmVar);
    }

    @Override
    public final void a(d72 d72Var) {
        d72Var.getClass();
        this.a.a(d72Var);
    }

    @Override
    public final void close() throws IOException {
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

    @Override
    public final long a(xv xvVar) throws IOException {
        long jA = this.a.a(xvVar);
        this.d = jA;
        if (jA == 0) {
            return 0L;
        }
        if (xvVar.g == -1 && jA != -1) {
            xvVar = xvVar.a(jA);
        }
        this.c = true;
        this.b.a(xvVar);
        return this.d;
    }
}
