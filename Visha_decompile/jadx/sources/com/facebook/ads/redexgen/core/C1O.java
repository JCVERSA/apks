package com.facebook.ads.redexgen.core;

public final class C1O {
    public int A01 = 0;
    public int A02 = 0;
    public int A04 = 1;
    public int A00 = 1;
    public int A03 = 0;

    public final C1O A00(int i) {
        this.A00 = i;
        return this;
    }

    public final C1O A01(int i) {
        this.A01 = i;
        return this;
    }

    public final C1O A02(int i) {
        this.A02 = i;
        return this;
    }

    public final C1O A03(int i) {
        this.A03 = i;
        return this;
    }

    public final C1O A04(int i) {
        this.A04 = i;
        return this;
    }

    public final C2318oy A05() {
        return new C2318oy(this.A01, this.A02, this.A04, this.A00, this.A03);
    }
}
