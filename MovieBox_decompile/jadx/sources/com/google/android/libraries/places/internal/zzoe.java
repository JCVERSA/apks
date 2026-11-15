package com.google.android.libraries.places.internal;

import java.io.Serializable;
import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

final class zzoe extends AbstractList implements RandomAccess, Serializable {
    final List zza;
    final zzmd zzb;

    zzoe(List list, zzmd zzmdVar) {
        list.getClass();
        this.zza = list;
        this.zzb = zzmdVar;
    }

    @Override
    public final Object get(int i10) {
        return ((zzef) this.zza.get(i10)).toString();
    }

    @Override
    public final boolean isEmpty() {
        return this.zza.isEmpty();
    }

    @Override
    public final Iterator iterator() {
        return listIterator();
    }

    @Override
    public final ListIterator listIterator(int i10) {
        return new zzod(this, this.zza.listIterator(i10));
    }

    @Override
    public final Object remove(int i10) {
        return ((zzef) this.zza.remove(i10)).toString();
    }

    @Override
    protected final void removeRange(int i10, int i11) {
        this.zza.subList(i10, i11).clear();
    }

    @Override
    public final int size() {
        return this.zza.size();
    }
}
