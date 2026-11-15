package com.facebook.ads.redexgen.core;

public class NJ implements InterfaceC1331Wc {
    public final int A00;
    public final NI A01;

    public NJ(NI ni, int i) {
        this.A01 = ni;
        this.A00 = i;
    }

    @Override
    public final void ACp() {
        this.A01.A03 = false;
        this.A01.A0V();
        this.A01.A0E.setToolbarActionMode(this.A01.getCloseButtonStyle());
        if (this.A01.A07 && this.A01.A06 != null) {
            this.A01.A06.A05();
            this.A01.A09.A4b(new LX().A6d());
        }
    }

    @Override
    public final void AEn(float f) {
        this.A01.A0E.setProgress(100.0f * (1.0f - (f / this.A00)));
    }
}
