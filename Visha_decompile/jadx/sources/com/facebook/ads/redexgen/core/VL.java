package com.facebook.ads.redexgen.core;

public class VL extends AbstractRunnableC1322Vt {
    public final VJ A00;

    public VL(VJ vj) {
        this.A00 = vj;
    }

    @Override
    public final void A07() throws Exception {
        VJ.A00(this.A00);
        if (this.A00.A01 > 0) {
            try {
                Thread.sleep(this.A00.A01);
            } catch (InterruptedException unused) {
            }
        }
        this.A00.A0B();
    }
}
