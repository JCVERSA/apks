package com.google.android.gms.internal.play_billing;

import java.util.Iterator;

final class zzhh implements Iterator {
    final Iterator zza;
    final zzhi zzb;

    zzhh(zzhi zzhiVar) {
        this.zzb = zzhiVar;
        this.zza = zzhiVar.zza.iterator();
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
