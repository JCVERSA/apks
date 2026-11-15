package com.google.android.gms.internal.auth;

import java.util.Iterator;

final class zzhc implements Iterator {
    final Iterator zza;
    final zzhd zzb;

    zzhc(zzhd zzhdVar) {
        this.zzb = zzhdVar;
        this.zza = zzhdVar.zza.iterator();
    }

    @Override
    public final boolean hasNext() {
        return this.zza.hasNext();
    }

    @Override
    public final Object next() {
        return (String) this.zza.next();
    }

    @Override
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
