package com.facebook.ads.redexgen.core;

public class FM implements InterfaceC1594cf {
    public final YY A00;
    public final FL A01;
    public final C1614cz A02;

    public FM(FL fl, C1614cz c1614cz, YY yy) {
        this.A01 = fl;
        this.A02 = c1614cz;
        this.A00 = yy;
    }

    @Override
    public final void AHo() {
        this.A01.A09();
        this.A01.A03 = this.A01.A05(this.A02, this.A00);
        if (this.A01.A01 != null && this.A01.A00 != null) {
            this.A01.A03.AAl(this.A01.A01, this.A01.A02, this.A01.A00);
        }
    }
}
