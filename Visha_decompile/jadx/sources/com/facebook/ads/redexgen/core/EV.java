package com.facebook.ads.redexgen.core;

public class EV implements InterfaceC1733ew {
    public final C1632dI A00;

    public EV(C1632dI c1632dI) {
        this.A00 = c1632dI;
    }

    @Override
    public final void AGQ() {
        if (this.A00.A02 != null) {
            this.A00.A02.A4b(this.A00.A03.A8w());
        }
    }

    @Override
    public final void AGS(C1735ey c1735ey) {
        if (this.A00.A02 == null) {
            return;
        }
        if (c1735ey != null && c1735ey.A00()) {
            this.A00.A02.A4b(this.A00.A03.A8x());
        } else {
            this.A00.A02.A4b(this.A00.A03.A8w());
        }
    }
}
