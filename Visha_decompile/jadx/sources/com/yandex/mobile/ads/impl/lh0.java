package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.io.IOException;
import okio.Buffer;

public final class lh0 extends h42 {
    final hh0 e;
    final int f;
    final Buffer g;
    final int h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public lh0(String str, hh0 hh0Var, int i, Buffer buffer, int i2, boolean z) {
        super(str, true);
        this.e = hh0Var;
        this.f = i;
        this.g = buffer;
        this.h = i2;
    }

    @Override
    public final long e() {
        try {
            cn1 cn1Var = this.e.l;
            Buffer buffer = this.g;
            int i = this.h;
            ((bn1) cn1Var).getClass();
            y45.j(buffer, "source");
            buffer.skip(i);
            this.e.k().a(this.f, t50.i);
            synchronized (this.e) {
                this.e.B.remove(Integer.valueOf(this.f));
            }
            return -1L;
        } catch (IOException unused) {
            return -1L;
        }
    }
}
