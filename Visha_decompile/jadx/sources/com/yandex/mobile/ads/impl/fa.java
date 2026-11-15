package com.yandex.mobile.ads.impl;

import com.transsion.audiotagger.tag.datatype.DataTypes;
import defpackage.j1a;
import defpackage.y45;
import java.util.List;

public final class fa {
    public static List a(iy.g gVar) {
        y45.j(gVar, "adapter");
        List listC = defpackage.x71.c();
        listC.add(iy.d.a);
        listC.add(new iy.e("Info"));
        if (gVar.i() == sw.c && gVar.a() != null) {
            String strG = gVar.g();
            listC.add(new iy.f((strG == null || j1a.o0(strG)) ? DataTypes.OBJ_ID : gVar.g(), gVar.a()));
        }
        listC.add(new iy.f("Type", gVar.i().a()));
        List<px> listH = gVar.h();
        if (listH != null) {
            for (px pxVar : listH) {
                listC.add(new iy.f(pxVar.a(), pxVar.b()));
            }
        }
        List<ly> listB = gVar.b();
        if (listB != null && !listB.isEmpty()) {
            listC.add(iy.d.a);
            listC.add(new iy.e("CPM floors"));
            String strG2 = gVar.g();
            String str = (strG2 == null || j1a.o0(strG2)) ? "" : gVar.g() + ": ";
            for (ly lyVar : gVar.b()) {
                listC.add(new iy.f(str + lyVar.b(), "cpm: " + lyVar.a()));
            }
        }
        return defpackage.x71.a(listC);
    }
}
