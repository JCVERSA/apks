package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class et {
    private final List<gt> a;

    public et(ArrayList arrayList) {
        y45.j(arrayList, "adBreaks");
        this.a = arrayList;
    }

    public final List<gt> a() {
        return this.a;
    }

    public final void b() {
        Iterator<gt> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().a(null);
        }
    }
}
