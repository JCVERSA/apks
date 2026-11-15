package com.yandex.mobile.ads.impl;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class y02 {
    public static ArrayList a(List list, vr0 vr0Var) {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(a(vr0Var));
        ArrayList arrayList2 = new ArrayList();
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList2.addAll(a(((ig) it.next()).a()));
            }
        }
        arrayList.addAll(arrayList2);
        return arrayList;
    }

    private static List a(vr0 vr0Var) {
        List<x> listA;
        if (vr0Var != null && (listA = vr0Var.a()) != null) {
            ArrayList arrayList = new ArrayList();
            for (Object obj : listA) {
                if (obj instanceof w02) {
                    arrayList.add(obj);
                }
            }
            ArrayList arrayList2 = new ArrayList();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                List<z02> listC = ((w02) it.next()).c();
                ArrayList arrayList3 = new ArrayList(defpackage.z71.v(listC, 10));
                Iterator<T> it2 = listC.iterator();
                while (it2.hasNext()) {
                    arrayList3.add(((z02) it2.next()).c().a());
                }
                defpackage.d81.C(arrayList2, arrayList3);
            }
            return arrayList2;
        }
        return defpackage.y71.k();
    }
}
