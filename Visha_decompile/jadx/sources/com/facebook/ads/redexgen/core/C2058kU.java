package com.facebook.ads.redexgen.core;

public final class C2058kU implements InterfaceC0993Iw {
    public long A00 = -1;
    public long A01 = -1;
    public C0926Gg A02;
    public C0927Gh A03;

    public C2058kU(C0927Gh c0927Gh, C0926Gg c0926Gg) {
        this.A03 = c0927Gh;
        this.A02 = c0926Gg;
    }

    public final void A00(long j) {
        this.A00 = j;
    }

    @Override
    public final InterfaceC0942Gw A5R() {
        C3M.A08(this.A00 != -1);
        return new C2098lK(this.A03, this.A00);
    }

    @Override
    public final long AGd(InterfaceC2101lN interfaceC2101lN) {
        if (this.A01 < 0) {
            return -1L;
        }
        long result = -(this.A01 + 2);
        this.A01 = -1L;
        return result;
    }

    @Override
    public final void AJR(long j) {
        long[] jArr = this.A02.A01;
        this.A01 = jArr[AbstractC06244a.A0L(jArr, j, true, true)];
    }
}
