package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class b71 {
    private final l51 a;

    public b71() {
        this(new l51());
    }

    public final List<String> a(y61 y61Var) {
        y45.j(y61Var, "responseBody");
        List<g41> listE = y61Var.e();
        ArrayList arrayList = new ArrayList(defpackage.z71.v(listE, 10));
        Iterator<T> it = listE.iterator();
        while (it.hasNext()) {
            arrayList.add(this.a.a((g41) it.next()));
        }
        return defpackage.z71.x(arrayList);
    }

    public b71(l51 l51Var) {
        y45.j(l51Var, "nativeAdDataExtractor");
        this.a = l51Var;
    }
}
