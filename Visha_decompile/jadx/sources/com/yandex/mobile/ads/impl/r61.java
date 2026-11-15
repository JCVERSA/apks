package com.yandex.mobile.ads.impl;

import defpackage.y45;
import defpackage.ye9;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public final class r61 {
    public static Set a(q61 q61Var) {
        y45.j(q61Var, "nativeAdPrivate");
        return a(q61Var, null);
    }

    public static Set b(q61 q61Var) {
        y45.j(q61Var, "nativeAdPrivate");
        return a(q61Var, t20.b);
    }

    public static Set c(q61 q61Var) {
        y45.j(q61Var, "nativeAdPrivate");
        return a(q61Var, t20.c);
    }

    private static Set a(q61 q61Var, t20 t20Var) {
        List<b30> listC = q61Var.c();
        if (listC != null) {
            ArrayList arrayList = new ArrayList();
            Iterator<T> it = listC.iterator();
            while (it.hasNext()) {
                defpackage.d81.C(arrayList, ((b30) it.next()).a());
            }
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : arrayList) {
                s20 s20Var = (s20) obj;
                if (t20Var == null || s20Var.b() == t20Var) {
                    arrayList2.add(obj);
                }
            }
            ArrayList arrayList3 = new ArrayList(defpackage.z71.v(arrayList2, 10));
            Iterator it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                arrayList3.add(((s20) it2.next()).a());
            }
            Set setG1 = defpackage.i81.g1(arrayList3);
            if (setG1 != null) {
                return setG1;
            }
        }
        return ye9.f();
    }
}
