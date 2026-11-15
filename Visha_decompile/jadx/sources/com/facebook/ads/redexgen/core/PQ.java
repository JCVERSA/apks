package com.facebook.ads.redexgen.core;

public class PQ {
    public final Object A00;

    public PQ(Object obj) {
        this.A00 = obj;
    }

    public static PQ A00(int i, int i2, int i3, int i4, boolean z, boolean z2) {
        return new PQ(PS.A04.A00(i, i2, i3, i4, z, z2));
    }
}
