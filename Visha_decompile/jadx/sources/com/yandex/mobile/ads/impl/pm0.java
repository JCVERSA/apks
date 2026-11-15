package com.yandex.mobile.ads.impl;

import com.yandex.mobile.ads.instream.InstreamAdBreakType;
import defpackage.y45;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

public final class pm0 {
    private final gf2 a;

    public static final class a implements Comparator<ej1> {
        @Override
        public final int compare(ej1 ej1Var, ej1 ej1Var2) {
            ej1 ej1Var3 = ej1Var;
            ej1 ej1Var4 = ej1Var2;
            y45.j(ej1Var3, "first");
            y45.j(ej1Var4, "second");
            if (y45.e(ej1Var3, ej1Var4)) {
                return 0;
            }
            String strE = ej1Var3.a().e();
            String strE2 = ej1Var4.a().e();
            return (!y45.e(strE, InstreamAdBreakType.PREROLL) && (y45.e(strE2, InstreamAdBreakType.PREROLL) || y45.e(strE, InstreamAdBreakType.POSTROLL) || (!y45.e(strE2, InstreamAdBreakType.POSTROLL) && ej1Var3.b() >= ej1Var4.b()))) ? 1 : -1;
        }
    }

    public pm0(gf2 gf2Var) {
        y45.j(gf2Var, "videoPlayerController");
        this.a = gf2Var;
    }

    public final om0 a(List<gt> list) {
        Object obj;
        Object next;
        y45.j(list, "adBreaks");
        ArrayList arrayList = new ArrayList();
        ArrayList<gt> arrayList2 = new ArrayList();
        for (Object obj2 : list) {
            if (y45.e(((gt) obj2).e(), InstreamAdBreakType.MIDROLL)) {
                arrayList2.add(obj2);
            }
        }
        for (gt gtVar : arrayList2) {
            ht htVarB = gtVar.b();
            long jB = htVarB.b();
            if (ht.a.b == htVarB.a()) {
                jB = (long) ((jB / 100) * this.a.b());
            }
            arrayList.add(new ej1(gtVar, jB));
        }
        Collections.sort(arrayList, new a());
        Iterator<T> it = list.iterator();
        do {
            obj = null;
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!y45.e(((gt) next).e(), InstreamAdBreakType.PREROLL));
        gt gtVar2 = (gt) next;
        for (Object obj3 : list) {
            if (y45.e(((gt) obj3).e(), InstreamAdBreakType.POSTROLL)) {
                obj = obj3;
                break;
            }
        }
        return new om0(arrayList, gtVar2, (gt) obj);
    }
}
