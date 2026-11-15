package com.facebook.ads.redexgen.core;

public final class C0983Im {
    public final int A00;
    public final int A01;
    public final int A02;
    public final int A03;
    public final long A04;
    public final long A05;
    public final long A06;
    public final C2312or A07;
    public final long[] A08;
    public final long[] A09;
    public final C0984In[] A0A;

    public C0983Im(int i, int i2, long j, long j2, long j3, C2312or c2312or, int i3, C0984In[] c0984InArr, int i4, long[] jArr, long[] jArr2) {
        this.A00 = i;
        this.A03 = i2;
        this.A06 = j;
        this.A05 = j2;
        this.A04 = j3;
        this.A07 = c2312or;
        this.A02 = i3;
        this.A0A = c0984InArr;
        this.A01 = i4;
        this.A08 = jArr;
        this.A09 = jArr2;
    }

    public final C0984In A00(int i) {
        if (this.A0A == null) {
            return null;
        }
        return this.A0A[i];
    }
}
