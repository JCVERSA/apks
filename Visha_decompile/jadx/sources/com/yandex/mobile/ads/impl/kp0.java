package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.Iterator;
import java.util.List;

public final class kp0 {
    /* JADX WARN: Code duplicated, block: B:17:0x004f  */
    public static jp0 a(na1 na1Var, List list) {
        int iIntValue;
        Integer num;
        y45.j(na1Var, "nativeValidator");
        y45.j(list, "showNotices");
        if (list.isEmpty()) {
            iIntValue = 50;
        } else {
            Iterator it = list.iterator();
            if (it.hasNext()) {
                Integer numValueOf = Integer.valueOf(((ey1) it.next()).d());
                while (it.hasNext()) {
                    Integer numValueOf2 = Integer.valueOf(((ey1) it.next()).d());
                    if (numValueOf.compareTo(numValueOf2) < 0) {
                        numValueOf = numValueOf2;
                    }
                }
                num = numValueOf;
            } else {
                num = null;
            }
            if (num != null) {
                iIntValue = num.intValue();
            } else {
                iIntValue = 50;
            }
        }
        return new jp0(na1Var, iIntValue);
    }
}
