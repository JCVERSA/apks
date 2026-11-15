package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.ArrayList;
import java.util.Iterator;

public final class or {
    private final ap0 a;

    public or(ap0 ap0Var) {
        y45.j(ap0Var, "integratedMediationNetworkProvider");
        this.a = ap0Var;
    }

    public final ArrayList a() {
        ArrayList arrayListA = this.a.a();
        ArrayList arrayList = new ArrayList();
        for (Object obj : arrayListA) {
            if (!y45.e(((qz0) obj).c(), "undefined")) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(defpackage.z71.v(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(((qz0) it.next()).c());
        }
        return arrayList2;
    }
}
