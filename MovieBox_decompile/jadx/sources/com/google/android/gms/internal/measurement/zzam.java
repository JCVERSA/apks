package com.google.android.gms.internal.measurement;

import java.util.Iterator;

final class zzam implements Iterator<zzaq> {
    private final Iterator zza;

    zzam(Iterator it) {
        this.zza = it;
    }

    @Override
    public final boolean hasNext() {
        return this.zza.hasNext();
    }

    @Override
    public final zzaq next() {
        return new zzas((String) this.zza.next());
    }
}
