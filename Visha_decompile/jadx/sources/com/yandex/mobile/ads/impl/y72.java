package com.yandex.mobile.ads.impl;

import java.util.Collections;
import java.util.List;

final class y72 implements n32 {
    public static final y72 c = new y72();
    private final List<hv> b;

    private y72() {
        this.b = Collections.emptyList();
    }

    @Override
    public final int a() {
        return 1;
    }

    @Override
    public final List<hv> b(long j) {
        return j >= 0 ? this.b : Collections.emptyList();
    }

    @Override
    public final int a(long j) {
        return j < 0 ? 0 : -1;
    }

    public y72(hv hvVar) {
        this.b = Collections.singletonList(hvVar);
    }

    @Override
    public final long a(int i) {
        if (i == 0) {
            return 0L;
        }
        throw new IllegalArgumentException();
    }
}
