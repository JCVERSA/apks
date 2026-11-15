package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.ArrayList;
import java.util.Iterator;

public final class c01 {
    public static final void a(ArrayList arrayList) {
        y45.j(arrayList, "report");
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            d01.a aVar = (d01.a) it.next();
            int iOrdinal = aVar.b().ordinal();
            if (iOrdinal == 0) {
                hp0.b(aVar.a(), new Object[0]);
            } else if (iOrdinal == 1) {
                hp0.a(aVar.a(), new Object[0]);
            }
        }
    }
}
