package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class oa1 {
    private final gx0 a = new gx0();

    public final boolean a(s41 s41Var) {
        y45.j(s41Var, "nativeAdBlock");
        List<g41> listE = s41Var.c().e();
        ArrayList arrayList = new ArrayList();
        for (g41 g41Var : listE) {
            this.a.getClass();
            defpackage.d81.C(arrayList, gx0.a(g41Var));
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            lb2 lb2VarC = ((ex0) it.next()).c();
            List<zb2<kb1>> listC = lb2VarC != null ? lb2VarC.c() : null;
            if (listC == null) {
                listC = defpackage.y71.k();
            }
            defpackage.d81.C(arrayList2, listC);
        }
        if (!arrayList2.isEmpty()) {
            Iterator it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                if (!((zb2) it2.next()).g().d().isEmpty()) {
                    return true;
                }
            }
        }
        return false;
    }
}
