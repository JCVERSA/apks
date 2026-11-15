package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.collection.CollectionUtils;
import java.util.List;

public final class RunnableC3017yh implements Runnable {
    public final String a;
    public final List b;
    public final Yh c;

    public RunnableC3017yh(Yh yh, String str, List list) {
        this.c = yh;
        this.a = str;
        this.b = list;
    }

    @Override
    public final void run() {
        Yh yh = this.c;
        Yh.a(yh.a, yh.d, yh.e).reportEvent(this.a, CollectionUtils.getMapFromList(this.b));
    }
}
