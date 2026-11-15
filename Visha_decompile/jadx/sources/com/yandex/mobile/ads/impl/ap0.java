package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public final class ap0 {
    private final a01 a;

    public ap0() {
        this(new a01());
    }

    public final ArrayList a() {
        a01 a01Var = this.a;
        int i = mz0.e;
        ArrayList arrayListA = a01Var.a(mz0.a.a());
        ArrayList arrayList = new ArrayList();
        for (Object obj : arrayListA) {
            List<qz0.c> listB = ((qz0) obj).b();
            if (!(listB instanceof Collection) || !listB.isEmpty()) {
                Iterator<T> it = listB.iterator();
                while (it.hasNext()) {
                    if (((qz0.c) it.next()).c()) {
                        arrayList.add(obj);
                        break;
                    }
                }
            }
        }
        return arrayList;
    }

    public ap0(a01 a01Var) {
        y45.j(a01Var, "mediationNetworksDataProvider");
        this.a = a01Var;
    }
}
