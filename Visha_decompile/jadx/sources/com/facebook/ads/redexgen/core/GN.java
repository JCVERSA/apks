package com.facebook.ads.redexgen.core;

import androidx.media3.common.C;

public final class GN {
    public static final GN A03 = new GN(-3, C.TIME_UNSET, -1);
    public final int A00;
    public final long A01;
    public final long A02;

    public GN(int i, long j, long j2) {
        this.A00 = i;
        this.A02 = j;
        this.A01 = j2;
    }

    public static GN A03(long j) {
        return new GN(0, C.TIME_UNSET, j);
    }

    public static GN A04(long j, long j2) {
        return new GN(-1, j, j2);
    }

    public static GN A05(long j, long j2) {
        return new GN(-2, j, j2);
    }
}
