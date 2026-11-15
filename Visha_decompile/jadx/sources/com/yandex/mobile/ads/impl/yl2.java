package com.yandex.mobile.ads.impl;

import com.yandex.mobile.ads.common.ImpressionData;
import defpackage.y45;

public final class yl2 implements ImpressionData {
    private final t4 a;

    public yl2(t4 t4Var) {
        y45.j(t4Var, "impressionData");
        this.a = t4Var;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof yl2) && y45.e(((yl2) obj).a, this.a);
    }

    @Override
    public final String getRawData() {
        return this.a.c();
    }

    public final int hashCode() {
        return this.a.hashCode();
    }
}
