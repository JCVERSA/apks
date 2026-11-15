package com.yandex.mobile.ads.impl;

import defpackage.j1a;
import defpackage.y45;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class zz0 {
    private final a01 a;

    public zz0(a01 a01Var) {
        y45.j(a01Var, "networksDataProvider");
        this.a = a01Var;
    }

    public final ArrayList a(List list) {
        y45.j(list, "mediationNetworks");
        ArrayList arrayList = new ArrayList(defpackage.z71.v(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            qx qxVar = (qx) it.next();
            List<String> listB = qxVar.b();
            ArrayList arrayList2 = new ArrayList(defpackage.z71.v(listB, 10));
            for (String str : listB) {
                List listN0 = j1a.N0(str, new char[]{'.'}, false, 0, 6, null);
                String str2 = (String) defpackage.i81.r0(listN0, defpackage.y71.m(listN0) - 1);
                if (str2 == null) {
                    str2 = "";
                }
                arrayList2.add(new mz0.b(str2, str));
            }
            String strF = qxVar.f();
            String strC = qxVar.c();
            if (strC == null) {
                strC = "undefined";
            }
            arrayList.add(new mz0(strF, strC, arrayList2));
        }
        return this.a.a(arrayList);
    }
}
