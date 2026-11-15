package com.facebook.ads.redexgen.core;

public class C1155Pf extends AbstractRunnableC1322Vt {
    public final long A00;
    public final VR A01;
    public final VU A02;
    public final String A03;

    public C1155Pf(VU vu, String str, long j, VR vr) {
        this.A02 = vu;
        this.A03 = str;
        this.A00 = j;
        this.A01 = vr;
    }

    @Override
    public final void A07() {
        this.A02.A0N(this.A03, this.A00, this.A01);
    }
}
