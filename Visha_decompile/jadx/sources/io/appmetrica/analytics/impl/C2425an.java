package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.backport.BiFunction;
import java.util.ArrayList;
import java.util.Map;
import java.util.TreeMap;

public final class C2425an {
    public final Zm a;
    public final BiFunction b;
    public final C2688lc c;

    public C2425an() {
        this(new Xm(), new C2860sa(), C2879t4.i().l());
    }

    public final ArrayList a(Thread thread, Thread thread2) {
        Map mapC;
        ArrayList arrayList = new ArrayList();
        TreeMap treeMap = new TreeMap(new Ym());
        try {
            mapC = this.a.c();
        } catch (SecurityException unused) {
            mapC = null;
        }
        if (mapC != null) {
            treeMap.putAll(mapC);
        }
        if (thread2 != null) {
            treeMap.remove(thread2);
        }
        for (Map.Entry entry : treeMap.entrySet()) {
            Thread thread3 = (Thread) entry.getKey();
            if (thread3 != thread && thread3 != thread2) {
                arrayList.add((Tm) this.b.apply(thread3, (StackTraceElement[]) entry.getValue()));
            }
        }
        return arrayList;
    }

    public C2425an(Zm zm, C2860sa c2860sa, C2688lc c2688lc) {
        this.a = zm;
        this.b = c2860sa;
        this.c = c2688lc;
    }
}
