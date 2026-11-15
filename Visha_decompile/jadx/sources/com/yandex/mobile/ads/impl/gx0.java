package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public final class gx0 {
    public static Set a(g41 g41Var) {
        y45.j(g41Var, "nativeAd");
        List<ig<?>> listB = g41Var.b();
        ArrayList arrayList = new ArrayList(defpackage.z71.v(listB, 10));
        Iterator<T> it = listB.iterator();
        while (it.hasNext()) {
            arrayList.add(((ig) it.next()).d());
        }
        return defpackage.i81.g1(defpackage.f81.V(arrayList, ex0.class));
    }
}
