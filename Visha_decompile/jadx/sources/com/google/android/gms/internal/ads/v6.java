package com.google.android.gms.internal.ads;

import defpackage.t4i;
import java.util.Iterator;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.SortedMap;
import java.util.SortedSet;

public final class v6 extends y6 implements NavigableSet {
    public final zzfvp e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v6(zzfvp zzfvpVar, NavigableMap navigableMap) {
        super(zzfvpVar, navigableMap);
        this.e = zzfvpVar;
    }

    @Override
    public final SortedMap b() {
        return (NavigableMap) ((SortedMap) this.b);
    }

    @Override
    public final Object ceiling(Object obj) {
        return ((NavigableMap) ((SortedMap) this.b)).ceilingKey(obj);
    }

    @Override
    public final Iterator descendingIterator() {
        return descendingSet().iterator();
    }

    @Override
    public final NavigableSet descendingSet() {
        return new v6(this.e, ((NavigableMap) ((SortedMap) this.b)).descendingMap());
    }

    @Override
    public final Object floor(Object obj) {
        return ((NavigableMap) ((SortedMap) this.b)).floorKey(obj);
    }

    @Override
    public final SortedSet headSet(Object obj) {
        return headSet(obj, false);
    }

    @Override
    public final Object higher(Object obj) {
        return ((NavigableMap) ((SortedMap) this.b)).higherKey(obj);
    }

    @Override
    public final Object lower(Object obj) {
        return ((NavigableMap) ((SortedMap) this.b)).lowerKey(obj);
    }

    @Override
    public final Object pollFirst() {
        return t4i.a(iterator());
    }

    @Override
    public final Object pollLast() {
        return t4i.a(descendingIterator());
    }

    @Override
    public final SortedSet subSet(Object obj, Object obj2) {
        return subSet(obj, true, obj2, false);
    }

    @Override
    public final SortedSet tailSet(Object obj) {
        return tailSet(obj, true);
    }

    @Override
    public final NavigableSet headSet(Object obj, boolean z) {
        return new v6(this.e, ((NavigableMap) ((SortedMap) this.b)).headMap(obj, z));
    }

    @Override
    public final NavigableSet subSet(Object obj, boolean z, Object obj2, boolean z2) {
        return new v6(this.e, ((NavigableMap) ((SortedMap) this.b)).subMap(obj, z, obj2, z2));
    }

    @Override
    public final NavigableSet tailSet(Object obj, boolean z) {
        return new v6(this.e, ((NavigableMap) ((SortedMap) this.b)).tailMap(obj, z));
    }
}
