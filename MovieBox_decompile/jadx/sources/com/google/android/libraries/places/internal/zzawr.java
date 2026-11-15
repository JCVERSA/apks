package com.google.android.libraries.places.internal;

import java.util.Iterator;

final class zzawr implements Iterator {
    final Iterator zza;
    final zzaws zzb;

    zzawr(zzaws zzawsVar) {
        this.zzb = zzawsVar;
        this.zza = zzawsVar.zza.iterator();
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
