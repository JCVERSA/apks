package com.facebook.ads.redexgen.core;

import com.facebook.ads.androidx.media3.common.Timeline;

public final class C2E extends IllegalStateException {
    public final int A00;
    public final long A01;
    public final Timeline A02;

    public C2E(Timeline timeline, int i, long j) {
        this.A02 = timeline;
        this.A00 = i;
        this.A01 = j;
    }
}
