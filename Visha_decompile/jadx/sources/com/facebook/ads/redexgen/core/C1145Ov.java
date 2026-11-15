package com.facebook.ads.redexgen.core;

public class C1145Ov implements X5 {
    public int A00;
    public final X5 A01;

    public C1145Ov(X5 x5, int i) {
        this.A01 = x5;
        this.A00 = i;
    }

    @Override
    public final void AGO(String str) {
        if (this.A00 > 0) {
            this.A01.AGO(str);
            this.A00--;
        }
    }

    @Override
    public final void flush() {
        this.A01.flush();
    }
}
