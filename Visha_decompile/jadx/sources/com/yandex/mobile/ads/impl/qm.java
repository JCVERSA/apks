package com.yandex.mobile.ads.impl;

import java.nio.ByteBuffer;

final class qm {
    private long a;
    private long b;
    private boolean c;

    public final long a(jc0 jc0Var) {
        return Math.max(0L, ((this.b - 529) * 1000000) / jc0Var.A) + this.a;
    }

    public final void a() {
        this.a = 0L;
        this.b = 0L;
        this.c = false;
    }

    public final long a(jc0 jc0Var, ry ryVar) {
        if (this.b == 0) {
            this.a = ryVar.f;
        }
        if (this.c) {
            return ryVar.f;
        }
        ByteBuffer byteBuffer = ryVar.d;
        byteBuffer.getClass();
        int i = 0;
        for (int i2 = 0; i2 < 4; i2++) {
            i = (i << 8) | (byteBuffer.get(i2) & 255);
        }
        int iB = f21.b(i);
        if (iB == -1) {
            this.c = true;
            this.b = 0L;
            this.a = ryVar.f;
            et0.d("C2Mp3TimestampTracker", "MPEG audio header is invalid.");
            return ryVar.f;
        }
        long jMax = Math.max(0L, ((this.b - 529) * 1000000) / jc0Var.A) + this.a;
        this.b += (long) iB;
        return jMax;
    }
}
