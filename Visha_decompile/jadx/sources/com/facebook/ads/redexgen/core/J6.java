package com.facebook.ads.redexgen.core;

public class J6 extends AbstractRunnableC1322Vt {
    public final C0989Is A00;
    public final boolean A01;

    public J6(C0989Is c0989Is, boolean z) {
        this.A00 = c0989Is;
        this.A01 = z;
    }

    @Override
    public final void A07() {
        AbstractC1365Xm abstractC1365XmA0C = this.A00.A0c.A0C();
        if (abstractC1365XmA0C == null) {
            return;
        }
        abstractC1365XmA0C.setPageDetailsVisible((this.A01 || abstractC1365XmA0C.A0B()) ? false : true);
        abstractC1365XmA0C.setToolbarActionMode(this.A00.getCloseButtonStyle());
    }
}
