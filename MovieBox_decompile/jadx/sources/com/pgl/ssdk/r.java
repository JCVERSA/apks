package com.pgl.ssdk;

import java.nio.ByteBuffer;

public class r {

    private final long f39357a;

    private final long f39358b;

    private final int f39359c;

    private final long f39360d;

    private final ByteBuffer f39361e;

    public r(long j10, long j11, int i10, long j12, ByteBuffer byteBuffer) {
        this.f39357a = j10;
        this.f39358b = j11;
        this.f39359c = i10;
        this.f39360d = j12;
        this.f39361e = byteBuffer;
    }

    public long a() {
        return this.f39357a;
    }

    public int b() {
        return this.f39359c;
    }

    public long c() {
        return this.f39358b;
    }

    public ByteBuffer d() {
        return this.f39361e;
    }

    public long e() {
        return this.f39360d;
    }
}
