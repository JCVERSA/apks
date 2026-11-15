package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public final class l51 {
    private final ch a;

    public l51() {
        this(new ch());
    }

    public final List<String> a(g41 g41Var) {
        y45.j(g41Var, "nativeAd");
        ch chVar = this.a;
        List<ig<?>> listB = g41Var.b();
        chVar.getClass();
        Set setA = ch.a(listB);
        ArrayList arrayList = new ArrayList();
        Iterator it = setA.iterator();
        while (it.hasNext()) {
            String strD = ((xj0) it.next()).d();
            if (strD != null) {
                arrayList.add(strD);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (((String) obj).length() > 0) {
                arrayList2.add(obj);
            }
        }
        return defpackage.i81.b1(arrayList2);
    }

    public l51(ch chVar) {
        y45.j(chVar, "assetsImagesProvider");
        this.a = chVar;
    }
}
