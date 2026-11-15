package com.google.android.gms.internal.ads;

import defpackage.m2i;
import java.io.Serializable;
import java.util.AbstractSequentialList;
import java.util.List;
import java.util.ListIterator;

final class zzfxl extends AbstractSequentialList implements Serializable {
    final List zza;
    final m2i zzb;

    public zzfxl(List list, m2i m2iVar) {
        list.getClass();
        this.zza = list;
        this.zzb = m2iVar;
    }

    @Override
    public final boolean isEmpty() {
        return this.zza.isEmpty();
    }

    @Override
    public final ListIterator listIterator(int i) {
        return new o7(this, this.zza.listIterator(i));
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
