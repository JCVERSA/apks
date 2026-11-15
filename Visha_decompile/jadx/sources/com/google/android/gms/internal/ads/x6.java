package com.google.android.gms.internal.ads;

import java.util.Comparator;
import java.util.SortedMap;
import java.util.SortedSet;

public class x6 extends q6 implements SortedMap {
    public SortedSet f;
    public final zzfvp g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x6(zzfvp zzfvpVar, SortedMap sortedMap) {
        super(zzfvpVar, sortedMap);
        this.g = zzfvpVar;
    }

    public SortedMap c() {
        return (SortedMap) this.d;
    }

    @Override
    public final Comparator comparator() {
        return c().comparator();
    }

    public SortedSet d() {
        return new y6(this.g, c());
    }

    @Override
    public SortedSet keySet() {
        SortedSet sortedSet = this.f;
        if (sortedSet != null) {
            return sortedSet;
        }
        SortedSet sortedSetD = d();
        this.f = sortedSetD;
        return sortedSetD;
    }

    @Override
    public final Object firstKey() {
        return c().firstKey();
    }

    public SortedMap headMap(Object obj) {
        return new x6(this.g, c().headMap(obj));
    }

    @Override
    public final Object lastKey() {
        return c().lastKey();
    }

    public SortedMap subMap(Object obj, Object obj2) {
        return new x6(this.g, c().subMap(obj, obj2));
    }

    public SortedMap tailMap(Object obj) {
        return new x6(this.g, c().tailMap(obj));
    }
}
