package com.facebook.ads.redexgen.core;

public class C1804g7 implements QI {
    public final C06826g A00;

    public C1804g7(C06826g c06826g) {
        this.A00 = c06826g;
    }

    @Override
    public final void ACK(AbstractC1182Qg abstractC1182Qg) {
        abstractC1182Qg.A0d(true);
        if (abstractC1182Qg.A06 != null && abstractC1182Qg.A07 == null) {
            abstractC1182Qg.A06 = null;
        }
        abstractC1182Qg.A07 = null;
        if (!abstractC1182Qg.A0G() && !this.A00.A1x(abstractC1182Qg.A0H) && abstractC1182Qg.A0i()) {
            this.A00.removeDetachedView(abstractC1182Qg.A0H, false);
        }
    }
}
