package com.facebook.ads.redexgen.core;

import java.util.List;

public final class BO {
    public final B8 A00;
    public final Exception A01;
    public final List<B8> A02;
    public final boolean A03;

    public BO(B8 b8, boolean z, List<B8> list, Exception exc) {
        this.A00 = b8;
        this.A03 = z;
        this.A02 = list;
        this.A01 = exc;
    }
}
