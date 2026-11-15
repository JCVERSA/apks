package com.facebook.ads.redexgen.core;

public class VK extends AbstractRunnableC1322Vt {
    public final VJ A00;

    public VK(VJ vj) {
        this.A00 = vj;
    }

    @Override
    public final void A07() {
        this.A00.A0C = false;
        if (this.A00.A0B.getQueue().isEmpty()) {
            this.A00.A0B.execute(this.A00.A0A);
        }
    }
}
