package io.appmetrica.analytics.impl;

import defpackage.i81;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public final class H3 implements InterfaceC3023yn {
    @Override
    public final List<L3> invoke(List<L3> list, L3 l3) {
        if (!(list instanceof Collection) || !list.isEmpty()) {
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                X7 x7 = ((L3) it.next()).b;
                X7 x8 = l3.b;
                if (x7 == x8) {
                    if (x8 != X7.c) {
                        return null;
                    }
                    ArrayList arrayList = new ArrayList();
                    for (Object obj : list) {
                        if (((L3) obj).b != X7.c) {
                            arrayList.add(obj);
                        }
                    }
                    return i81.K0(arrayList, l3);
                }
            }
        }
        return i81.K0(list, l3);
    }
}
