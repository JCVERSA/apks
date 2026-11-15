package com.google.android.libraries.places.internal;

import java.util.Iterator;

abstract class zzov implements Iterator {
    final Iterator zzb;

    zzov(Iterator it) {
        it.getClass();
        this.zzb = it;
    }

    @Override
    public final boolean hasNext() {
        return this.zzb.hasNext();
    }

    @Override
    public final Object next() {
        return zza(this.zzb.next());
    }

    @Override
    public final void remove() {
        this.zzb.remove();
    }

    abstract Object zza(Object obj);
}
