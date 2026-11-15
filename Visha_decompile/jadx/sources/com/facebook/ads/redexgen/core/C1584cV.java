package com.facebook.ads.redexgen.core;

public final class C1584cV {
    public String A02;
    public String A03;
    public String A04;
    public final C1096Mw A06;
    public final N9 A07;
    public final C1635dL A08;
    public C1098My A01 = C1098My.A01(null);
    public int A00 = 1000;
    public boolean A05 = false;

    public C1584cV(C1635dL c1635dL, C1096Mw c1096Mw, N9 n9) {
        this.A08 = c1635dL;
        this.A06 = c1096Mw;
        this.A07 = n9;
    }

    public final C1584cV A09(int i) {
        this.A00 = i;
        return this;
    }

    public final C1584cV A0A(C1098My c1098My) {
        this.A01 = c1098My;
        return this;
    }

    public final C1584cV A0B(String str) {
        this.A04 = str;
        return this;
    }

    public final C1584cV A0C(String str) {
        this.A02 = str;
        return this;
    }

    public final C1584cV A0D(String str) {
        this.A03 = str;
        return this;
    }

    public final C1584cV A0E(boolean z) {
        this.A05 = z;
        return this;
    }

    public final C1586cX A0F() {
        return new C1586cX(this, null);
    }
}
