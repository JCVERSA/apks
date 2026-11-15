package com.facebook.ads.redexgen.core;

public class F0 implements R6 {
    public final R0 A00;
    public final C06143q A01;

    public F0(C06143q c06143q, R0 r0) {
        this.A01 = c06143q;
        this.A00 = r0;
    }

    @Override
    public final boolean AAA() {
        if (!this.A01.A0b()) {
            if (this.A01.A0c()) {
                return true;
            }
            return this.A01.A0d();
        }
        this.A01.A0a(this.A00);
        return true;
    }
}
