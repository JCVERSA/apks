package com.facebook.ads.redexgen.core;

public final class C1994jS implements InterfaceC0942Gw {
    public final int A00;
    public final long A01;
    public final long A02;
    public final long A03;
    public final C1034Kl A04;

    public C1994jS(C1034Kl c1034Kl, int i, long j, long j2) {
        this.A04 = c1034Kl;
        this.A00 = i;
        this.A03 = j;
        this.A01 = (j2 - j) / ((long) c1034Kl.A02);
        this.A02 = A00(this.A01);
    }

    private long A00(long j) {
        return AbstractC06244a.A0U(j * ((long) this.A00), 1000000L, this.A04.A04);
    }

    @Override
    public final long A7l() {
        return this.A02;
    }

    @Override
    public final C0941Gv A8t(long j) {
        long jA0T = AbstractC06244a.A0T((((long) this.A04.A04) * j) / (((long) this.A00) * 1000000), 0L, this.A01 - 1);
        long j2 = this.A03 + (((long) this.A04.A02) * jA0T);
        long jA00 = A00(jA0T);
        C0943Gx c0943Gx = new C0943Gx(jA00, j2);
        if (jA00 >= j || jA0T == this.A01 - 1) {
            return new C0941Gv(c0943Gx);
        }
        long j3 = 1 + jA0T;
        return new C0941Gv(c0943Gx, new C0943Gx(A00(j3), this.A03 + (((long) this.A04.A02) * j3)));
    }

    @Override
    public final boolean AAa() {
        return true;
    }
}
