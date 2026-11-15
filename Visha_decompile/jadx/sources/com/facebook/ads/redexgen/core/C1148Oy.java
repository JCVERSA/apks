package com.facebook.ads.redexgen.core;

public class C1148Oy implements X5 {
    public int A00;
    public final X5 A01;
    public final X5 A02;

    public C1148Oy(X5 x5, int i, X5 x6) {
        this.A01 = x5;
        this.A00 = i;
        this.A02 = x6;
    }

    @Override
    public final void AGO(String str) {
        if (this.A00 > 0) {
            this.A01.AGO(str);
            this.A01.flush();
            this.A00--;
            return;
        }
        this.A02.AGO(str);
    }

    @Override
    public final void flush() {
        this.A02.flush();
    }
}
