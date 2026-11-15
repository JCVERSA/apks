package com.facebook.ads.redexgen.core;

public final class C2060kW implements InterfaceC0942Gw {
    public final C2059kV A00;

    public C2060kW(C2059kV c2059kV) {
        this.A00 = c2059kV;
    }

    @Override
    public final long A7l() {
        return this.A00.A0B.A05(this.A00.A07);
    }

    @Override
    public final C0941Gv A8t(long j) {
        long jA06 = this.A00.A0B.A06(j);
        long j2 = this.A00.A09;
        long j3 = this.A00.A08;
        long targetGranule = this.A00.A09;
        long j4 = (j3 - targetGranule) * jA06;
        long targetGranule2 = this.A00.A07;
        long estimatedPosition = AbstractC06244a.A0T((j2 + (j4 / targetGranule2)) - 30000, this.A00.A09, this.A00.A08 - 1);
        return new C0941Gv(new C0943Gx(j, estimatedPosition));
    }

    @Override
    public final boolean AAa() {
        return true;
    }
}
