package com.yandex.mobile.ads.impl;

import androidx.annotation.Nullable;
import java.util.List;
import java.util.Map;

public final class th0 extends rh0 {
    public final int e;
    public final Map<String, List<String>> f;

    public th0(int i, @Nullable uv uvVar, Map map) {
        super(oe.a("Response code: ", i), uvVar, 2004);
        this.e = i;
        this.f = map;
    }
}
