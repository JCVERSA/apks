package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public final class kk2 {
    private final mb2 a;
    private final ok2 b;

    public kk2(mb2 mb2Var) {
        this(mb2Var, new ok2());
    }

    public final ArrayList a(mb2 mb2Var) {
        y45.j(mb2Var, "videoAd");
        List<uu> listE = this.a.e();
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = listE.iterator();
        while (it.hasNext()) {
            defpackage.d81.C(arrayList, ((uu) it.next()).j());
        }
        List<uu> listE2 = mb2Var.e();
        ArrayList arrayList2 = new ArrayList(defpackage.z71.v(listE2, 10));
        for (uu uuVar : listE2) {
            this.b.getClass();
            y45.j(uuVar, "adCreative");
            y45.j(listE, "wrapperAdCreatives");
            List<mi0> listF = uuVar.f();
            ArrayList arrayList3 = new ArrayList(defpackage.z71.v(listF, 10));
            Iterator<T> it2 = listF.iterator();
            while (it2.hasNext()) {
                arrayList3.add(((mi0) it2.next()).a());
            }
            Set setF1 = defpackage.i81.f1(arrayList3);
            ArrayList arrayList4 = new ArrayList();
            Iterator<T> it3 = listE.iterator();
            while (it3.hasNext()) {
                defpackage.d81.C(arrayList4, ((uu) it3.next()).f());
            }
            ArrayList arrayList5 = new ArrayList();
            for (Object obj : arrayList4) {
                if (setF1.add(((mi0) obj).a())) {
                    arrayList5.add(obj);
                }
            }
            arrayList2.add(new uu.a().c(uuVar.g()).b(uuVar.h()).a(uuVar.f()).c(arrayList).b(uuVar.c()).a(uuVar.i()).a(uuVar.e()).a(arrayList5).c(uuVar.j()).a(uuVar.b()).a());
        }
        return arrayList2;
    }

    public kk2(mb2 mb2Var, ok2 ok2Var) {
        y45.j(mb2Var, "wrapperAd");
        y45.j(ok2Var, "iconsProvider");
        this.a = mb2Var;
        this.b = ok2Var;
    }
}
