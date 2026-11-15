package com.facebook.ads.redexgen.core;

import java.util.Collections;
import java.util.List;

public final class C2035k7 implements J7 {
    public final long[] A00;
    public final C2263o2[] A01;

    public C2035k7(C2263o2[] c2263o2Arr, long[] jArr) {
        this.A01 = c2263o2Arr;
        this.A00 = jArr;
    }

    @Override
    public final List<C2263o2> A7P(long j) {
        int iA0L = AbstractC06244a.A0L(this.A00, j, true, false);
        if (iA0L == -1 || this.A01[iA0L] == C2263o2.A0J) {
            return Collections.emptyList();
        }
        return Collections.singletonList(this.A01[iA0L]);
    }

    @Override
    public final long A7v(int i) {
        boolean z = true;
        C3M.A07(i >= 0);
        if (i >= this.A00.length) {
            z = false;
        }
        C3M.A07(z);
        return this.A00[i];
    }

    @Override
    public final int A7w() {
        return this.A00.length;
    }

    @Override
    public final int A8S(long j) {
        int iA0K = AbstractC06244a.A0K(this.A00, j, false, false);
        int index = this.A00.length;
        if (iA0K < index) {
            return iA0K;
        }
        return -1;
    }
}
