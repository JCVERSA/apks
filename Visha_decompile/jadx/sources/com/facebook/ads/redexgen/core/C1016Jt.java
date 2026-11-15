package com.facebook.ads.redexgen.core;

public class C1016Jt implements InterfaceC1331Wc {
    public final C06555f A00;

    public C1016Jt(C06555f c06555f) {
        this.A00 = c06555f;
    }

    @Override
    public final void ACp() {
        this.A00.A02 = false;
        if (this.A00.A07 != null) {
            this.A00.A07.setToolbarActionMode(this.A00.getCloseButtonStyle());
        }
    }

    @Override
    public final void AEn(float f) {
        if (this.A00.A07 != null) {
            this.A00.A07.setProgressImmediate(100.0f * (1.0f - (f / this.A00.getAdInfo().A0K().A00())));
        }
    }
}
