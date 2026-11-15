package com.yandex.mobile.ads.impl;

import defpackage.s86;
import defpackage.y45;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public final class o31 {
    public static double a(List list) {
        Object next;
        y45.j(list, "imageValues");
        ArrayList arrayList = new ArrayList(defpackage.z71.v(list, 10));
        Iterator it = list.iterator();
        while (true) {
            double dG = 0.0d;
            if (!it.hasNext()) {
                break;
            }
            xj0 xj0Var = (xj0) it.next();
            if (xj0Var.a() != 0) {
                dG = ((double) xj0Var.g()) / ((double) xj0Var.a());
            }
            arrayList.add(Double.valueOf(dG));
        }
        ArrayList arrayList2 = new ArrayList(defpackage.z71.v(arrayList, 10));
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            arrayList2.add(Integer.valueOf(s86.b(((Number) it2.next()).doubleValue() * ((double) 1000))));
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator it3 = arrayList2.iterator();
        while (true) {
            int iIntValue = 1;
            if (!it3.hasNext()) {
                break;
            }
            int iIntValue2 = ((Number) it3.next()).intValue();
            Integer numValueOf = Integer.valueOf(iIntValue2);
            Integer num = (Integer) linkedHashMap.get(Integer.valueOf(iIntValue2));
            if (num != null) {
                iIntValue = 1 + num.intValue();
            }
            linkedHashMap.put(numValueOf, Integer.valueOf(iIntValue));
        }
        Iterator it4 = linkedHashMap.entrySet().iterator();
        if (it4.hasNext()) {
            next = it4.next();
            if (it4.hasNext()) {
                int iIntValue3 = ((Number) ((Map.Entry) next).getValue()).intValue();
                do {
                    Object next2 = it4.next();
                    int iIntValue4 = ((Number) ((Map.Entry) next2).getValue()).intValue();
                    if (iIntValue3 < iIntValue4) {
                        next = next2;
                        iIntValue3 = iIntValue4;
                    }
                } while (it4.hasNext());
            }
        } else {
            next = null;
        }
        Map.Entry entry = (Map.Entry) next;
        Integer num2 = entry != null ? (Integer) entry.getValue() : null;
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        for (Map.Entry entry2 : linkedHashMap.entrySet()) {
            int iIntValue5 = ((Number) entry2.getValue()).intValue();
            if (num2 != null && iIntValue5 == num2.intValue()) {
                linkedHashMap2.put(entry2.getKey(), entry2.getValue());
            }
        }
        ArrayList arrayList3 = new ArrayList(linkedHashMap2.size());
        Iterator it5 = linkedHashMap2.entrySet().iterator();
        while (it5.hasNext()) {
            arrayList3.add(Double.valueOf(((double) ((Number) ((Map.Entry) it5.next()).getKey()).intValue()) / ((double) 1000)));
        }
        List listR0 = defpackage.i81.R0(arrayList3);
        int size = listR0.size();
        int i = size / 2;
        if (arrayList3.isEmpty()) {
            return 0.0d;
        }
        int i2 = size % 2;
        if (i2 + ((((i2 ^ 2) & ((-i2) | i2)) >> 31) & 2) == 1) {
            return ((Number) listR0.get(i)).doubleValue();
        }
        return (((Number) listR0.get(i - 1)).doubleValue() + ((Number) listR0.get(i)).doubleValue()) / ((double) 2);
    }
}
