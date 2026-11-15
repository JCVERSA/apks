package com.facebook.ads.redexgen.core;

public final class M3 {
    public final long A00;
    public final long A01;

    public M3(long j, long j2) {
        this.A01 = j;
        this.A00 = j2;
    }

    public final boolean A00(long j, long j2) {
        if (this.A00 == -1) {
            return j >= this.A01;
        }
        return j2 != -1 && this.A01 <= j && j + j2 <= this.A01 + this.A00;
    }

    public final boolean A01(long j, long j2) {
        if (this.A01 <= j) {
            return this.A00 == -1 || this.A01 + this.A00 > j;
        }
        return j2 == -1 || j + j2 > this.A01;
    }
}
