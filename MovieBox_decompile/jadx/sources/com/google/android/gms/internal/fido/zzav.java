package com.google.android.gms.internal.fido;

import java.util.NoSuchElementException;

final class zzav extends zzaz {
    boolean zza;
    final Object zzb;

    zzav(Object obj) {
        this.zzb = obj;
    }

    @Override
    public final boolean hasNext() {
        return !this.zza;
    }

    @Override
    public final Object next() {
        if (this.zza) {
            throw new NoSuchElementException();
        }
        this.zza = true;
        return this.zzb;
    }
}
