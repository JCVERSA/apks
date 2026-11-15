package com.facebook.ads.redexgen.core;

public class VH extends AbstractC1259Tg<String> {
    public final UP A00;
    public final VG A01;

    public VH(VG vg, UP up) {
        this.A01 = vg;
        this.A00 = up;
    }

    @Override
    public final void A02(String str) {
        super.A02(str);
        if (this.A00.A0B()) {
            this.A01.A02.A5u();
        } else {
            this.A01.A02.A5t();
        }
    }

    @Override
    public final void A01(int i, String str) {
        super.A01(i, str);
    }
}
