package com.facebook.ads.redexgen.core;

public abstract class AbstractC2357ps {
    public InterfaceC2358pt A00;

    public final void A00() {
        if (this.A00 != null) {
            this.A00.onStart();
        }
    }

    public final void A02() {
        if (this.A00 != null) {
            this.A00.onStop();
        }
    }

    public final void A03(InterfaceC2358pt interfaceC2358pt) {
        this.A00 = interfaceC2358pt;
    }
}
