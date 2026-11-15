package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.Iterator;
import java.util.List;

public final class h6 implements z1 {
    private final long a;

    public h6(List<m6> list) {
        y45.j(list, "adPodItems");
        Iterator<T> it = list.iterator();
        long jA = 0;
        while (it.hasNext()) {
            jA += ((m6) it.next()).a();
        }
        this.a = jA;
    }

    @Override
    public final long a() {
        return this.a;
    }

    @Override
    public final long a(long j) {
        return this.a;
    }
}
