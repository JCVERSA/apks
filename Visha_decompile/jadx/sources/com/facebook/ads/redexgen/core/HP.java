package com.facebook.ads.redexgen.core;

public class HP implements InterfaceC1331Wc {
    public final C06374n A00;

    public HP(C06374n c06374n) {
        this.A00 = c06374n;
    }

    @Override
    public final void ACp() {
        this.A00.A0M.ACy(this.A00.A0C);
        this.A00.A0M.ACZ();
    }

    @Override
    public final void AEn(float f) {
        int i;
        float totalForce = (this.A00.A0C - f) + (this.A00.A0a ? 0 : this.A00.A0P.getDuration());
        if (this.A00.A0a) {
            i = this.A00.A0C;
        } else {
            i = this.A00.A0B;
        }
        float seenTime = i;
        this.A00.A0M.AJs(totalForce / seenTime);
    }
}
