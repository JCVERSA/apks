package com.google.android.gms.internal.play_billing;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

@Deprecated
public final class zzhi extends AbstractList implements RandomAccess, zzfk {
    private final zzfk zza;

    public zzhi(zzfk zzfkVar) {
        this.zza = zzfkVar;
    }

    @Override
    public final Object get(int i10) {
        return ((zzfj) this.zza).get(i10);
    }

    @Override
    public final Iterator iterator() {
        return new zzhh(this);
    }

    @Override
    public final ListIterator listIterator(int i10) {
        return new zzhg(this, i10);
    }

    @Override
    public final int size() {
        return this.zza.size();
    }

    @Override
    public final Object zzf(int i10) {
        return this.zza.zzf(i10);
    }

    @Override
    public final List zzh() {
        return this.zza.zzh();
    }

    @Override
    public final zzfk zze() {
        return this;
    }
}
