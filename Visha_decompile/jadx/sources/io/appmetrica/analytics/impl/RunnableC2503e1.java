package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.collection.CollectionUtils;
import java.util.List;

public final class RunnableC2503e1 implements Runnable {
    public final List a;
    public final C2702m1 b;

    public RunnableC2503e1(C2702m1 c2702m1, List list) {
        this.b = c2702m1;
        this.a = list;
    }

    @Override
    public final void run() {
        C2702m1.a(this.b).reportAnr(CollectionUtils.getMapFromList(this.a));
    }
}
