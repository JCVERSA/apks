package com.google.android.gms.measurement.internal;

import java.util.Iterator;

final class zzbd implements Iterator<String> {
    private Iterator<String> zza;
    private final zzbe zzb;

    zzbd(zzbe zzbeVar) {
        this.zzb = zzbeVar;
        this.zza = zzbeVar.zza.keySet().iterator();
    }

    @Override
    public final boolean hasNext() {
        return this.zza.hasNext();
    }

    @Override
    public final String next() {
        return this.zza.next();
    }

    @Override
    public final void remove() {
        throw new UnsupportedOperationException("Remove not supported");
    }
}
