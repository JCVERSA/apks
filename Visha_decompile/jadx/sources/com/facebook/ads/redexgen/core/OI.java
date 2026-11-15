package com.facebook.ads.redexgen.core;

public class OI implements ZY {
    public final OD A00;

    public OI(OD od) {
        this.A00 = od;
    }

    @Override
    public final void AES(String str) {
        this.A00.A0C.setProgress(100);
        this.A00.A05 = false;
    }

    @Override
    public final void AEU(String str) {
        this.A00.A05 = true;
        this.A00.A0B.setUrl(str);
    }

    @Override
    public final void AEq(int i) {
        if (this.A00.A05) {
            this.A00.A0C.setProgress(i);
        }
    }

    @Override
    public final void AEt(String str) {
        this.A00.A0B.setTitle(str);
    }

    @Override
    public final void AEw() {
        this.A00.A0A.ACf(14);
    }
}
