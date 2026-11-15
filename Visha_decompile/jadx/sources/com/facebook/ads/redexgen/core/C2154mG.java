package com.facebook.ads.redexgen.core;

public final class C2154mG implements EN {
    public long A00;
    public long A01;
    public C2154mG A02;
    public EM A03;

    public C2154mG(long j, int i) {
        A02(j, i);
    }

    public final int A00(long j) {
        return ((int) (j - this.A01)) + this.A03.A00;
    }

    public final C2154mG A01() {
        this.A03 = null;
        C2154mG c2154mG = this.A02;
        this.A02 = null;
        return c2154mG;
    }

    public final void A02(long j, int i) {
        C3M.A08(this.A03 == null);
        this.A01 = j;
        this.A00 = ((long) i) + j;
    }

    public final void A03(EM em, C2154mG c2154mG) {
        this.A03 = em;
        this.A02 = c2154mG;
    }

    @Override
    public final EM A6m() {
        return (EM) C3M.A01(this.A03);
    }

    @Override
    public final C2154mG AC3() {
        if (this.A02 == null || this.A02.A03 == null) {
            return null;
        }
        return this.A02;
    }
}
