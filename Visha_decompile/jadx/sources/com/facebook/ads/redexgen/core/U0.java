package com.facebook.ads.redexgen.core;

import java.io.IOException;

public class U0 {
    public final int A00;
    public final C1275Tx A01;

    public U0(int i, C1275Tx c1275Tx) {
        this.A00 = i;
        this.A01 = c1275Tx;
    }

    public final int A00() {
        return this.A00;
    }

    public final int A01() throws IOException {
        return this.A01.A05();
    }

    public final C1266To A02(int i, byte[] bArr, int i2, int[] iArr, int i3) throws IOException {
        return this.A01.A06(i, bArr, i2, iArr, i3);
    }

    public final void A03() throws IOException {
        this.A01.A07();
    }

    public final void A04() throws IOException {
        this.A01.A08();
    }

    public final boolean A05(byte[] bArr) throws IOException {
        return this.A01.A09(bArr);
    }
}
