package com.facebook.ads.redexgen.core;

public class C1273Tv implements InterfaceC1419Zo {
    public final TD A00;

    public C1273Tv(TD td) {
        this.A00 = td;
    }

    @Override
    public final void ADT(C1418Zn c1418Zn) {
        this.A00.A0D.set(c1418Zn.A00() != null);
        if (this.A00.A0E.get() && this.A00.A02 != null) {
            this.A00.A02.AEW(c1418Zn.A00() != null);
        }
    }
}
