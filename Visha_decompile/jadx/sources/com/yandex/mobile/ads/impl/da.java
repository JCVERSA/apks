package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.Iterator;

public final class da {
    private final fl a;

    public da(fl flVar) {
        y45.j(flVar, "biddingSettings");
        this.a = flVar;
    }

    public final ba a(String str) {
        Object next;
        Iterator<T> it = this.a.c().iterator();
        while (it.hasNext()) {
            next = it.next();
            if (y45.e(((ba) next).e(), str)) {
                return (ba) next;
            }
        }
        next = null;
        return (ba) next;
    }
}
