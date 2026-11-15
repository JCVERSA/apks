package com.facebook.ads.redexgen.core;

import java.util.Map;

public abstract class YI implements ST {
    public final SQ A00;

    public YI(SQ sq) {
        this.A00 = sq;
    }

    @Override
    public final Map<String, String> A5S() {
        return TQ.A01(this.A00);
    }

    @Override
    public final Map<String, String> A6o() {
        return T5.A02();
    }

    @Override
    public final String A8D() {
        return T5.A00();
    }

    @Override
    public final String A8F() {
        return AbstractC1219Rr.A00().A03();
    }

    @Override
    public final boolean AAL() {
        return WH.A00().A03();
    }
}
