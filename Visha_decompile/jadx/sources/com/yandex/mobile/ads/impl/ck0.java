package com.yandex.mobile.ads.impl;

import android.graphics.Bitmap;
import defpackage.y45;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public final class ck0 {
    private final zj0 a = new zj0();

    public final void a(List<? extends ig<?>> list, Map<String, Bitmap> map) {
        List<xj0> listA;
        y45.j(list, "assets");
        y45.j(map, "images");
        for (ig<?> igVar : list) {
            Object objD = igVar.d();
            if (y45.e(igVar.c(), "media") && (objD instanceof ex0) && (listA = ((ex0) objD).a()) != null) {
                ArrayList arrayList = new ArrayList();
                for (Object obj : listA) {
                    this.a.getClass();
                    if (zj0.a((xj0) obj, map)) {
                        arrayList.add(obj);
                    }
                }
                listA.retainAll(arrayList);
            }
        }
    }
}
