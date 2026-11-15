package com.facebook.ads.redexgen.core;

public class LQ implements ZZ {
    public final ZO A00;

    public LQ(ZO zo) {
        this.A00 = zo;
    }

    @Override
    public final void ACa(boolean z) {
        this.A00.A0D(z);
        if (!this.A00.A0C || this.A00.A00 == null) {
            return;
        }
        this.A00.A00.setEnabled(z);
        this.A00.A00.setAlpha(z ? 1.0f : 0.3f);
    }

    @Override
    public final void ADJ(boolean z) {
        this.A00.A0D(z);
        if (!this.A00.A0C || this.A00.A02 == null) {
            return;
        }
        this.A00.A02.setEnabled(z);
        this.A00.A02.setAlpha(z ? 1.0f : 0.3f);
    }
}
