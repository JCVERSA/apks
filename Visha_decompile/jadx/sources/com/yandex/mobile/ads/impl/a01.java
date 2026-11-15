package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class a01 {
    private String a;

    public final ArrayList a(List list) {
        com.monetization.ads.mediation.base.a aVar;
        qz0.c cVar;
        y45.j(list, "networks");
        ArrayList arrayList = new ArrayList(defpackage.z71.v(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            mz0 mz0Var = (mz0) it.next();
            List<mz0.b> listB = mz0Var.b();
            ArrayList arrayList2 = new ArrayList(defpackage.z71.v(listB, 10));
            for (mz0.b bVar : listB) {
                try {
                    aVar = (com.monetization.ads.mediation.base.a) jo1.a.a(bVar.a(), new Object[0]);
                } catch (Exception unused) {
                    aVar = null;
                }
                if (aVar == null) {
                    cVar = new qz0.c(bVar.b(), null, false);
                } else {
                    tx0 tx0Var = new tx0(aVar);
                    if (this.a == null) {
                        this.a = tx0Var.b().getNetworkSdkVersion();
                    }
                    cVar = new qz0.c(bVar.b(), tx0Var.b().getAdapterVersion(), true);
                }
                arrayList2.add(cVar);
            }
            String str = this.a;
            this.a = null;
            arrayList.add(new qz0(mz0Var.d(), mz0Var.c(), str, arrayList2));
        }
        return arrayList;
    }
}
