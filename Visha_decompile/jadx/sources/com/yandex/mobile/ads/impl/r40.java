package com.yandex.mobile.ads.impl;

import androidx.annotation.Nullable;
import java.io.EOFException;
import java.io.IOException;

public final class r40 implements a62 {
    private final byte[] a = new byte[4096];

    @Override
    public final void a(long j, int i, int i2, int i3, @Nullable a62.a aVar) {
    }

    @Override
    public final void b(int i, ag1 ag1Var) {
        ag1Var.f(i);
    }

    @Override
    public final void a(jc0 jc0Var) {
    }

    @Override
    public final int a(qv qvVar, int i, boolean z) throws IOException {
        int i2 = qvVar.read(this.a, 0, Math.min(this.a.length, i));
        if (i2 != -1) {
            return i2;
        }
        if (z) {
            return -1;
        }
        throw new EOFException();
    }
}
