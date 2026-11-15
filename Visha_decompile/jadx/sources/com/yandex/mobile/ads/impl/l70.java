package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class l70 {
    private final List<ig<?>> a;

    /* JADX WARN: Multi-variable type inference failed */
    public l70(List<? extends ig<?>> list) {
        y45.j(list, "assets");
        this.a = list;
    }

    public final ArrayList a(g71 g71Var) {
        y45.j(g71Var, "nativeAdViewAdapter");
        List<ig<?>> list = this.a;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (!((ig) obj).f()) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : arrayList) {
            jg<?> jgVarA = g71Var.a((ig) obj2);
            if (jgVarA == null || !jgVarA.b()) {
                arrayList2.add(obj2);
            }
        }
        ArrayList arrayList3 = new ArrayList(defpackage.z71.v(arrayList2, 10));
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            arrayList3.add(((ig) it.next()).b());
        }
        return arrayList3;
    }
}
