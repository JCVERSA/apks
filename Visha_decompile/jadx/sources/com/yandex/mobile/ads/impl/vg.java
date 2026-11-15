package com.yandex.mobile.ads.impl;

import defpackage.abb;
import defpackage.ky5;
import defpackage.wn8;
import defpackage.y45;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Pair;

public final class vg {
    private final LinkedHashMap a;

    public vg(List<? extends ig<?>> list) {
        y45.j(list, "assets");
        LinkedHashMap linkedHashMap = new LinkedHashMap(wn8.d(ky5.g(defpackage.z71.v(list, 10)), 16));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            ig igVar = (ig) it.next();
            Pair pairA = abb.a(igVar.b(), igVar.d());
            linkedHashMap.put(pairA.getFirst(), pairA.getSecond());
        }
        this.a = linkedHashMap;
    }

    public final ex0 a() {
        Object obj = this.a.get("media");
        if (obj instanceof ex0) {
            return (ex0) obj;
        }
        return null;
    }
}
