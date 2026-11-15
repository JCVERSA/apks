package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public final class dc2<T> {
    private final vd2 a;
    private final sa2 b;
    private final bc2<T> c;

    public dc2(Context context, sc2 sc2Var) {
        this(context, sc2Var, new vd2(), new sa2(context), new bc2(sc2Var));
    }

    public final ArrayList a(List list) {
        List listT0;
        y45.j(list, "videoAds");
        this.a.getClass();
        y45.j(list, "videoAds");
        if (!(list instanceof Collection) || !list.isEmpty()) {
            Iterator<T> it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    listT0 = defpackage.i81.b1(list);
                    break;
                }
                if (((mb2) it.next()).i() != null) {
                    ArrayList arrayList = new ArrayList();
                    for (T t : list) {
                        if (((mb2) t).i() != null) {
                            arrayList.add(t);
                        }
                    }
                    listT0 = defpackage.i81.T0(arrayList, new ud2());
                    break;
                }
            }
        } else {
            listT0 = defpackage.i81.b1(list);
            break;
        }
        ArrayList arrayListA = this.b.a(listT0);
        int size = arrayListA.size();
        ArrayList arrayList2 = new ArrayList(defpackage.z71.v(arrayListA, 10));
        int i = 0;
        for (Object obj : arrayListA) {
            int i2 = i + 1;
            if (i < 0) {
                defpackage.y71.u();
            }
            arrayList2.add(this.c.a((ra2) obj, size, i));
            i = i2;
        }
        return arrayList2;
    }

    public dc2(Context context, sc2<T> sc2Var, vd2 vd2Var, sa2 sa2Var, bc2<T> bc2Var) {
        y45.j(context, "context");
        y45.j(sc2Var, "playbackInfoCreator");
        y45.j(vd2Var, "videoAdsOrderFilter");
        y45.j(sa2Var, "vastVideoAdsDataProvider");
        y45.j(bc2Var, "videoAdInfoCreator");
        this.a = vd2Var;
        this.b = sa2Var;
        this.c = bc2Var;
    }
}
