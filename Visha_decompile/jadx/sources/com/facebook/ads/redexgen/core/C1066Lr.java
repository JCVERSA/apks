package com.facebook.ads.redexgen.core;

public class C1066Lr implements InterfaceC1446aH {
    public final C1051Lc A00;

    public C1066Lr(C1051Lc c1051Lc) {
        this.A00 = c1051Lc;
    }

    @Override
    public final void ACI() {
        if (this.A00.A0V()) {
            this.A00.A0L();
            this.A00.A0a.setToolbarActionMessage("");
            this.A00.A0a.setToolbarActionMode(0);
        }
    }

    @Override
    public final void AE7() {
        this.A00.A0F = false;
        this.A00.A0O.A07();
    }

    @Override
    public final void AE8() {
        this.A00.A0F = true;
        this.A00.A0O.A06();
    }
}
