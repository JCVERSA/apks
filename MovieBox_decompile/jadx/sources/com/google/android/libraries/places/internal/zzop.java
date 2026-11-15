package com.google.android.libraries.places.internal;

import java.util.Iterator;

final class zzop extends zzob {
    private final transient zzoa zza;
    private final transient zznx zzb;

    zzop(zzoa zzoaVar, zznx zznxVar) {
        this.zza = zzoaVar;
        this.zzb = zznxVar;
    }

    @Override
    public final boolean contains(Object obj) {
        return this.zza.get(obj) != null;
    }

    @Override
    public final Iterator iterator() {
        return this.zzb.listIterator(0);
    }

    @Override
    public final int size() {
        return this.zza.size();
    }

    @Override
    final int zza(Object[] objArr, int i10) {
        return this.zzb.zza(objArr, i10);
    }

    @Override
    public final zznx zzd() {
        return this.zzb;
    }

    @Override
    public final zzox iterator() {
        return this.zzb.listIterator(0);
    }

    @Override
    final boolean zzf() {
        return true;
    }
}
