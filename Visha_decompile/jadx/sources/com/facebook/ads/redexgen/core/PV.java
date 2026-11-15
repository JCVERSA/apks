package com.facebook.ads.redexgen.core;

public final class PV extends VX {
    public final int A00;
    public final String A01;

    public PV(String str, int i, TE te) {
        super(VW.A03, te, null);
        this.A00 = i;
        this.A01 = str;
    }

    @Override
    public final TE A00() {
        return super.A00();
    }

    public final int A03() {
        return this.A00;
    }

    public final String A04() {
        return this.A01;
    }
}
