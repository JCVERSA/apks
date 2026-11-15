package com.google.android.libraries.places.internal;

import java.io.Serializable;
import java.util.AbstractSequentialList;
import java.util.List;
import java.util.ListIterator;

final class zzog extends AbstractSequentialList implements Serializable {
    final List zza;
    final zzmd zzb;

    zzog(List list, zzmd zzmdVar) {
        list.getClass();
        this.zza = list;
        this.zzb = zzmdVar;
    }

    @Override
    public final boolean isEmpty() {
        return this.zza.isEmpty();
    }

    @Override
    public final ListIterator listIterator(int i10) {
        return new zzof(this, this.zza.listIterator(i10));
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
