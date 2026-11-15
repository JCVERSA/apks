package com.facebook.ads.redexgen.core;

import java.util.Collections;
import java.util.List;

public final class C2046kI implements J7 {
    public final List<C2263o2> A00;

    public C2046kI(List<C2263o2> list) {
        this.A00 = list;
    }

    @Override
    public final List<C2263o2> A7P(long j) {
        return j >= 0 ? this.A00 : Collections.emptyList();
    }

    @Override
    public final long A7v(int i) {
        C3M.A07(i == 0);
        return 0L;
    }

    @Override
    public final int A7w() {
        return 1;
    }

    @Override
    public final int A8S(long j) {
        return j < 0 ? 0 : -1;
    }
}
