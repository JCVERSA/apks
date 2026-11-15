package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class bh {
    private final zj0 a;

    public bh() {
        this(new zj0());
    }

    public final ArrayList a(List list, Map map) {
        y45.j(list, "assets");
        y45.j(map, "images");
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ig igVar = (ig) it.next();
            Object objD = igVar.d();
            String strC = igVar.c();
            if (y45.e("image", strC) && (objD instanceof xj0)) {
                this.a.getClass();
                if (zj0.a((xj0) objD, map)) {
                    arrayList.add(igVar);
                }
            } else {
                if (y45.e("media", strC) && (objD instanceof ex0)) {
                    ex0 ex0Var = (ex0) objD;
                    if (ex0Var.a() != null) {
                        y45.h(objD, "null cannot be cast to non-null type com.monetization.ads.network.model.MediaValue");
                        List<xj0> listA = ex0Var.a();
                        xj0 xj0Var = listA != null ? (xj0) defpackage.i81.q0(listA) : null;
                        lb2 lb2VarC = ex0Var.c();
                        wu0 wu0VarB = ex0Var.b();
                        if (lb2VarC == null && wu0VarB == null) {
                            if (xj0Var != null) {
                                this.a.getClass();
                                if (zj0.a(xj0Var, map)) {
                                }
                            }
                        }
                        arrayList.add(igVar);
                    }
                }
                arrayList.add(igVar);
            }
        }
        return arrayList;
    }

    public bh(zj0 zj0Var) {
        y45.j(zj0Var, "imageValueValidator");
        this.a = zj0Var;
    }
}
