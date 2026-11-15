package com.facebook.ads.redexgen.core;

import java.util.List;

public abstract class AbstractC07107i extends AbstractC2233nX implements J7 {
    public long A00;
    public J7 A01;

    @Override
    public abstract void A0B();

    @Override
    public final void A0A() {
        super.A0A();
        this.A01 = null;
    }

    public final void A0C(long j, J7 j7, long j2) {
        super.A01 = j;
        this.A01 = j7;
        if (j2 == Long.MAX_VALUE) {
            j2 = super.A01;
        }
        this.A00 = j2;
    }

    @Override
    public final List<C2263o2> A7P(long j) {
        return ((J7) C3M.A01(this.A01)).A7P(j - this.A00);
    }

    @Override
    public final long A7v(int i) {
        return ((J7) C3M.A01(this.A01)).A7v(i) + this.A00;
    }

    @Override
    public final int A7w() {
        return ((J7) C3M.A01(this.A01)).A7w();
    }

    @Override
    public final int A8S(long j) {
        return ((J7) C3M.A01(this.A01)).A8S(j - this.A00);
    }
}
