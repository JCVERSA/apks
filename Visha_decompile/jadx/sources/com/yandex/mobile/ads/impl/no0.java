package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;

public final class no0 {
    private final vu a;

    public no0() {
        this(new vu());
    }

    public final he2 a(uu uuVar, String str) {
        Object next;
        List listK;
        y45.j(uuVar, "creative");
        this.a.getClass();
        Iterator it = vu.a(uuVar).iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!y45.e(((ig) next).b(), str));
        ig igVar = (ig) next;
        vr0 vr0VarA = igVar != null ? igVar.a() : null;
        if (vr0VarA != null) {
            return new he2(vr0VarA.e(), vr0VarA.d());
        }
        String strC = uuVar.c();
        List list = (List) ((LinkedHashMap) uuVar.a()).get("clickTracking");
        if (list == null || (listK = defpackage.i81.l0(list)) == null) {
            listK = defpackage.y71.k();
        }
        return new he2(strC, listK);
    }

    public no0(vu vuVar) {
        y45.j(vuVar, "creativeAssetsProvider");
        this.a = vuVar;
    }
}
