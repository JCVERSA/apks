package com.google.android.gms.internal.ads;

import defpackage.m2i;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

final class zzfxj extends AbstractList implements RandomAccess, Serializable {
    final List zza;
    final m2i zzb;

    public zzfxj(List list, m2i m2iVar) {
        list.getClass();
        this.zza = list;
        this.zzb = m2iVar;
    }

    @Override
    public final Object get(int i) {
        return this.zzb.apply(this.zza.get(i));
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
    public final ListIterator listIterator(int i) {
        return new n7(this, this.zza.listIterator(i));
    }

    @Override
    public final Object remove(int i) {
        return this.zzb.apply(this.zza.remove(i));
    }

    @Override
    public final void removeRange(int i, int i2) {
        this.zza.subList(i, i2).clear();
    }

    @Override
    public final int size() {
        return this.zza.size();
    }
}
