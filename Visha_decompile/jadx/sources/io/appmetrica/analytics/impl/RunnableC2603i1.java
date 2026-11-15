package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.collection.CollectionUtils;
import java.util.List;

public final class RunnableC2603i1 implements Runnable {
    public final String a;
    public final List b;
    public final C2702m1 c;

    public RunnableC2603i1(C2702m1 c2702m1, String str, List list) {
        this.c = c2702m1;
        this.a = str;
        this.b = list;
    }

    @Override
    public final void run() {
        C2702m1.a(this.c).reportEvent(this.a, CollectionUtils.getMapFromList(this.b));
    }
}
