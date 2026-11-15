package com.facebook.ads.redexgen.core;

public final class JE {
    public int A00 = 0;
    public final int A01;
    public final int A02;
    public final byte[] A03;

    public JE(int i, int i2) {
        this.A02 = i;
        this.A01 = i2;
        this.A03 = new byte[(i2 * 2) - 1];
    }
}
