package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.io.IOException;
import okio.BufferedSink;

public final class xp1 extends yp1 {
    final cx0 a;
    final int b;
    final byte[] c;
    final int d;

    public xp1(cx0 cx0Var, byte[] bArr, int i, int i2) {
        this.a = cx0Var;
        this.b = i;
        this.c = bArr;
        this.d = i2;
    }

    @Override
    public final long a() {
        return this.b;
    }

    @Override
    public final cx0 b() {
        return this.a;
    }

    @Override
    public final void a(BufferedSink bufferedSink) throws IOException {
        y45.j(bufferedSink, "sink");
        bufferedSink.write(this.c, this.d, this.b);
    }
}
