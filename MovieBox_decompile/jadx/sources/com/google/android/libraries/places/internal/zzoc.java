package com.google.android.libraries.places.internal;

import java.util.NoSuchElementException;

final class zzoc extends zzox {
    private Object zza;

    zzoc(Object obj) {
        this.zza = obj;
    }

    @Override
    public final boolean hasNext() {
        return this.zza != this;
    }

    @Override
    public final Object next() {
        Object obj = this.zza;
        this.zza = this;
        if (obj != this) {
            return obj;
        }
        throw new NoSuchElementException();
    }
}
