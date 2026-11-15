package com.facebook.ads.redexgen.core;

import java.io.IOException;

public final class C1035Km {
    public final int A00;
    public final long A01;

    public C1035Km(int i, long j) {
        this.A00 = i;
        this.A01 = j;
    }

    public static C1035Km A00(InterfaceC2101lN interfaceC2101lN, C4J c4j) throws IOException {
        interfaceC2101lN.AG9(c4j.A0l(), 0, 8);
        c4j.A0f(0);
        int iA0C = c4j.A0C();
        long size = c4j.A0O();
        return new C1035Km(iA0C, size);
    }
}
