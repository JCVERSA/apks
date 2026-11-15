package com.google.android.libraries.places.internal;

import java.util.concurrent.atomic.AtomicLong;

final class zzbep implements zzbkj {
    private final AtomicLong zza = new AtomicLong();

    zzbep() {
    }

    @Override
    public final void zza(long j10) {
        this.zza.getAndAdd(1L);
    }
}
