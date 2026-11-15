package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class vo1 {
    private final List<ig<?>> a;

    /* JADX WARN: Multi-variable type inference failed */
    public vo1(List<? extends ig<?>> list) {
        y45.j(list, "assets");
        this.a = list;
    }

    public final ArrayList a(g71 g71Var) {
        y45.j(g71Var, "viewAdapter");
        List<ig<?>> list = this.a;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            jg<?> jgVarA = g71Var.a((ig) obj);
            if (jgVarA != null && jgVarA.b()) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(defpackage.z71.v(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(((ig) it.next()).b());
        }
        return arrayList2;
    }
}
