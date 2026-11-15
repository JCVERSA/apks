package com.google.android.libraries.places.internal;

import java.util.Iterator;
import java.util.Map;

final class zzauj implements Iterator {
    private final Iterator zza;

    public zzauj(Iterator it) {
        this.zza = it;
    }

    @Override
    public final boolean hasNext() {
        return this.zza.hasNext();
    }

    @Override
    public final Object next() {
        Map.Entry entry = (Map.Entry) this.zza.next();
        return entry.getValue() instanceof zzauk ? new zzaui(entry, null) : entry;
    }

    @Override
    public final void remove() {
        this.zza.remove();
    }
}
