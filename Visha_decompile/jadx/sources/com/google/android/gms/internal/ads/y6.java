package com.google.android.gms.internal.ads;

import java.util.Comparator;
import java.util.SortedMap;
import java.util.SortedSet;

public class y6 extends t6 implements SortedSet {
    public final zzfvp d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y6(zzfvp zzfvpVar, SortedMap sortedMap) {
        super(zzfvpVar, sortedMap);
        this.d = zzfvpVar;
    }

    public SortedMap b() {
        return (SortedMap) this.b;
    }

    @Override
    public final Comparator comparator() {
        return b().comparator();
    }

    @Override
    public final Object first() {
        return b().firstKey();
    }

    public SortedSet headSet(Object obj) {
        return new y6(this.d, b().headMap(obj));
    }

    @Override
    public final Object last() {
        return b().lastKey();
    }

    public SortedSet subSet(Object obj, Object obj2) {
        return new y6(this.d, b().subMap(obj, obj2));
    }

    public SortedSet tailSet(Object obj) {
        return new y6(this.d, b().tailMap(obj));
    }
}
