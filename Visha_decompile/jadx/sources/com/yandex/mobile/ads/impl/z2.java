package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;

public final class z2 {
    private final LinkedHashMap a;

    public z2(List<gt> list) {
        y45.j(list, "adBreaks");
        this.a = a(list);
    }

    private static LinkedHashMap a(List list) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            linkedHashMap.put((gt) it.next(), y2.b);
        }
        return linkedHashMap;
    }

    public final y2 a(gt gtVar) {
        y45.j(gtVar, "adBreak");
        y2 y2Var = (y2) this.a.get(gtVar);
        return y2Var == null ? y2.f : y2Var;
    }

    public final boolean a() {
        List listN = defpackage.y71.n(y2.i, y2.h);
        Collection collectionValues = this.a.values();
        if (!(collectionValues instanceof Collection) || !collectionValues.isEmpty()) {
            Iterator it = collectionValues.iterator();
            while (it.hasNext()) {
                if (listN.contains((y2) it.next())) {
                    return true;
                }
            }
        }
        return false;
    }

    public final void a(gt gtVar, y2 y2Var) {
        y45.j(gtVar, "adBreak");
        y45.j(y2Var, "status");
        this.a.put(gtVar, y2Var);
    }
}
