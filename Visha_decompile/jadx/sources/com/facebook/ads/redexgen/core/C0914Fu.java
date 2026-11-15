package com.facebook.ads.redexgen.core;

public class C0914Fu extends AbstractRunnableC1322Vt {
    public final C4H A00;

    public C0914Fu(C4H c4h) {
        this.A00 = c4h;
    }

    @Override
    public final void A07() {
        if (this.A00.A00 != null) {
            this.A00.A00.A1E();
        }
        this.A00.A08.setToolbarActionMode(this.A00.getCloseButtonStyle());
        this.A00.A08.A07();
        this.A00.A06.set(true);
    }
}
