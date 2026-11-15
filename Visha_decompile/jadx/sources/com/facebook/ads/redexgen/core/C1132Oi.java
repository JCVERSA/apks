package com.facebook.ads.redexgen.core;

public class C1132Oi implements R6 {
    public final OD A00;

    public C1132Oi(OD od) {
        this.A00 = od;
    }

    @Override
    public final boolean AAA() {
        if (this.A00.A0E.canGoBack()) {
            this.A00.A0E.goBack();
            return true;
        }
        return false;
    }
}
