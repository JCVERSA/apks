package com.facebook.ads.redexgen.core;

public class C1013Jq implements InterfaceC1331Wc {
    public final C06535d A00;

    public C1013Jq(C06535d c06535d) {
        this.A00 = c06535d;
    }

    @Override
    public final void ACp() {
        this.A00.A0B = false;
        if (this.A00.A06 != null) {
            this.A00.A06.setToolbarActionMode(this.A00.getCloseButtonStyle());
        }
    }

    @Override
    public final void AEn(float f) {
        if (this.A00.A06 != null) {
            this.A00.A06.setProgressImmediate(100.0f * (1.0f - (f / this.A00.getAdInfo().A0K().A00())));
        }
    }
}
