package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public final class ch {
    public static Set a(List list) {
        y45.j(list, "assets");
        ArrayList arrayList = new ArrayList(defpackage.z71.v(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((ig) it.next()).d());
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            List<xj0> listE = obj instanceof xj0 ? defpackage.x71.e(obj) : obj instanceof ex0 ? ((ex0) obj).a() : null;
            if (listE != null) {
                arrayList2.add(listE);
            }
        }
        return defpackage.i81.g1(defpackage.z71.x(arrayList2));
    }
}
