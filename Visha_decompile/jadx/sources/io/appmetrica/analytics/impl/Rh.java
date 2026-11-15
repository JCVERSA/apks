package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.collection.CollectionUtils;
import java.util.List;

public final class Rh implements Runnable {
    public final List a;
    public final Yh b;

    public Rh(Yh yh, List list) {
        this.b = yh;
        this.a = list;
    }

    @Override
    public final void run() {
        Yh yh = this.b;
        Yh.a(yh.a, yh.d, yh.e).reportAnr(CollectionUtils.getMapFromList(this.a));
    }
}
