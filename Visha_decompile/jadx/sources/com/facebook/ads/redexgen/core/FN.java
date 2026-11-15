package com.facebook.ads.redexgen.core;

public class FN implements InterfaceC1593ce {
    public final C06153r A00;

    public FN(C06153r c06153r) {
        this.A00 = c06153r;
    }

    @Override
    public final void A9d() {
        if (this.A00.A03 instanceof C06535d) {
            ((C06535d) this.A00.A03).A1W();
            C1278Ua.A02(UZ.A0e, null, ((G2) this.A00).A02.A25(), ((G2) this.A00).A04.A0A());
        }
    }

    @Override
    public final void AJF() {
        if (this.A00.A03 instanceof C06535d) {
            ((C06535d) this.A00.A03).A1a(this.A00.A0M);
            C1278Ua.A02(UZ.A0e, null, ((G2) this.A00).A02.A25(), ((G2) this.A00).A04.A0A());
        }
        this.A00.A0k();
    }

    @Override
    public final void AJT() {
        this.A00.A0c();
        if (this.A00.A03 instanceof C06535d) {
            ((C06535d) this.A00.A03).getAdDetailsView().setVisibility(8);
        }
    }
}
