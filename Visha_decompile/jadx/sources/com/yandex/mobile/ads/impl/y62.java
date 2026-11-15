package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.Iterator;
import java.util.List;

public final class y62 {
    private final v9 a;

    public y62(v9 v9Var) {
        y45.j(v9Var, "adTracker");
        this.a = v9Var;
    }

    public final void a(List<String> list) {
        y45.j(list, "trackingUrls");
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            this.a.a((String) it.next(), z62.d);
        }
    }
}
