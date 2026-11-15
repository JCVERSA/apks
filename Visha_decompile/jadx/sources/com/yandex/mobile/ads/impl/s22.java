package com.yandex.mobile.ads.impl;

import android.net.Uri;
import androidx.annotation.Nullable;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
import java.util.Map;

public final class s22 implements tv {
    private final tv a;
    private long b;
    private Uri c = Uri.EMPTY;

    public s22(tv tvVar) {
        this.a = (tv) hg.a(tvVar);
        Collections.emptyMap();
    }

    @Override
    public final void a(d72 d72Var) {
        d72Var.getClass();
        this.a.a(d72Var);
    }

    @Override
    public final void close() throws IOException {
        this.a.close();
    }

    public final long e() {
        return this.b;
    }

    public final Uri f() {
        return this.c;
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
        int i3 = this.a.read(bArr, i, i2);
        if (i3 != -1) {
            this.b += (long) i3;
        }
        return i3;
    }

    @Override
    public final long a(xv xvVar) throws IOException {
        this.c = xvVar.a;
        Collections.emptyMap();
        long jA = this.a.a(xvVar);
        Uri uri = this.a.getUri();
        uri.getClass();
        this.c = uri;
        this.a.getResponseHeaders();
        return jA;
    }
}
