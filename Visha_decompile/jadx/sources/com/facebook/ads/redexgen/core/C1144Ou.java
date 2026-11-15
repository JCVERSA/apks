package com.facebook.ads.redexgen.core;

public class C1144Ou implements X5 {
    public final X4 A00;
    public final X5 A01;

    public C1144Ou(X5 x5, int i, int i2) {
        this.A01 = x5;
        this.A00 = new X4(i, i2);
    }

    @Override
    public final void AGO(String str) {
        this.A00.A04(str);
        if (this.A00.A02() != null && X7.A08(this.A00)) {
            this.A01.AGO(this.A00.A02());
        }
    }

    @Override
    public final void flush() {
        this.A00.A03();
        while (this.A00.A02() != null) {
            if (X7.A08(this.A00)) {
                this.A01.AGO(this.A00.A02());
            }
            this.A00.A03();
        }
    }
}
