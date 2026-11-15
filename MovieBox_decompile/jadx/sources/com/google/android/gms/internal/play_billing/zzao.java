package com.google.android.gms.internal.play_billing;

import java.util.Iterator;

final class zzao extends zzaj {
    private final transient zzai zza;
    private final transient zzaf zzb;

    zzao(zzai zzaiVar, zzaf zzafVar) {
        this.zza = zzaiVar;
        this.zzb = zzafVar;
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
        return this.zzb.zza(objArr, 0);
    }

    @Override
    public final zzaf zzd() {
        return this.zzb;
    }

    @Override
    public final zzas iterator() {
        return this.zzb.listIterator(0);
    }

    @Override
    final boolean zzf() {
        throw null;
    }
}
