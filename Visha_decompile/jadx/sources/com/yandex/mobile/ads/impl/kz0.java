package com.yandex.mobile.ads.impl;

import defpackage.abb;
import defpackage.ky5;
import defpackage.y45;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import kotlin.Pair;

public final class kz0 {
    private final rz0 a;
    private final a01 b;

    public kz0() {
        this(new rz0(), new a01());
    }

    public final Map<String, Object> a(boolean z) {
        String str = z ? "ads-mediation" : "single";
        int i = mz0.e;
        ArrayList arrayListA = this.b.a(mz0.a.a());
        ArrayList arrayList = new ArrayList();
        for (Object obj : arrayListA) {
            this.a.getClass();
            if (rz0.a((qz0) obj)) {
                arrayList.add(obj);
            }
        }
        Pair pairA = abb.a("integration_type", str);
        ArrayList arrayList2 = new ArrayList(defpackage.z71.v(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(ky5.h(abb.a("name", ((qz0) it.next()).d())));
        }
        return kotlin.collections.a.p(pairA, abb.a("networks", arrayList2));
    }

    public kz0(rz0 rz0Var, a01 a01Var) {
        y45.j(rz0Var, "mediationNetworkValidator");
        y45.j(a01Var, "mediationNetworksDataProvider");
        this.a = rz0Var;
        this.b = a01Var;
    }
}
