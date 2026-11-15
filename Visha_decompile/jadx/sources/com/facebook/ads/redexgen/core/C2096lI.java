package com.facebook.ads.redexgen.core;

public class C2096lI implements InterfaceC0942Gw {
    public final long A00;
    public final C0941Gv A01;

    public C2096lI(long j) {
        this(j, 0L);
    }

    public C2096lI(long j, long j2) {
        this.A00 = j;
        this.A01 = new C0941Gv(j2 == 0 ? C0943Gx.A04 : new C0943Gx(0L, j2));
    }

    @Override
    public final long A7l() {
        return this.A00;
    }

    @Override
    public final C0941Gv A8t(long j) {
        return this.A01;
    }

    @Override
    public final boolean AAa() {
        return false;
    }
}
