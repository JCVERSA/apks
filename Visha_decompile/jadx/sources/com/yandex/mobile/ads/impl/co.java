package com.yandex.mobile.ads.impl;

import java.util.Collections;
import java.util.List;

final class co implements n32 {
    private final List<hv> b;

    public co(List<hv> list) {
        this.b = list;
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

    @Override
    public final long a(int i) {
        if (i == 0) {
            return 0L;
        }
        throw new IllegalArgumentException();
    }
}
