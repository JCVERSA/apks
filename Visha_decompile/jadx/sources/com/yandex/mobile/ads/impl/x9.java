package com.yandex.mobile.ads.impl;

import defpackage.j1a;
import defpackage.y45;
import java.util.ArrayList;

public final class x9 {
    public static String a(w9 w9Var) {
        y45.j(w9Var, "adTuneInfo");
        ArrayList arrayList = new ArrayList();
        if (!j1a.o0(w9Var.a())) {
            arrayList.add(w9Var.a());
        }
        if (!j1a.o0(w9Var.c())) {
            arrayList.add("erid: " + w9Var.c());
        }
        return defpackage.i81.y0(arrayList, " · ", null, null, 0, null, null, 62, null);
    }
}
