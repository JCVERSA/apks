package com.facebook.ads.redexgen.core;

public final class E0 implements Comparable<E0> {
    public final boolean A00;
    public final boolean A01;

    public E0(C2312or c2312or, int i) {
        this.A00 = (c2312or.A0H & 1) != 0;
        this.A01 = AnonymousClass92.A0S(i, false);
    }

    @Override
    public final int compareTo(E0 e0) {
        return AbstractC2143m4.A01().A09(this.A01, e0.A01).A09(this.A00, e0.A00).A05();
    }
}
