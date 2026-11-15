package com.facebook.ads.redexgen.core;

import java.util.Collections;
import java.util.List;

public final class C2146m7 implements J7 {
    public final long A00;
    public final AbstractC0779Am<C2263o2> A01;

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Am != com.google.common.collect.ImmutableList<com.facebook.ads.androidx.media3.common.text.Cue> */
    public C2146m7(long j, AbstractC0779Am<C2263o2> abstractC0779Am) {
        this.A00 = j;
        this.A01 = abstractC0779Am;
    }

    @Override
    public final List<C2263o2> A7P(long j) {
        return j >= this.A00 ? this.A01 : Collections.emptyList();
    }

    @Override
    public final long A7v(int i) {
        C3M.A07(i == 0);
        return this.A00;
    }

    @Override
    public final int A7w() {
        return 1;
    }

    @Override
    public final int A8S(long j) {
        return this.A00 > j ? 0 : -1;
    }
}
