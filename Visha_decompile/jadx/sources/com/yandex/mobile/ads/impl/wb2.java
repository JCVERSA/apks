package com.yandex.mobile.ads.impl;

import defpackage.ky5;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public final class wb2 implements jg2 {
    final mb2 a;

    public wb2(mb2 mb2Var) {
        this.a = mb2Var;
    }

    @Override
    public final Map<String, List<String>> a() {
        List<l62> listB = this.a.l().b();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj : listB) {
            String strA = ((l62) obj).a();
            Object arrayList = linkedHashMap.get(strA);
            if (arrayList == null) {
                arrayList = new ArrayList();
                linkedHashMap.put(strA, arrayList);
            }
            ((List) arrayList).add(obj);
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(ky5.g(linkedHashMap.size()));
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            Object key = entry.getKey();
            Iterable iterable = (Iterable) entry.getValue();
            ArrayList arrayList2 = new ArrayList(defpackage.z71.v(iterable, 10));
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                arrayList2.add(((l62) it.next()).c());
            }
            linkedHashMap2.put(key, arrayList2);
        }
        return linkedHashMap2;
    }
}
