package com.google.android.libraries.places.internal;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

final class zzbrn implements zzbql {
    zzbrn() {
    }

    @Override
    public final Object zza() {
        return Executors.newCachedThreadPool(zzbjd.zzg("grpc-okhttp-%d", true));
    }

    @Override
    public final void zzb(Object obj) {
        ((ExecutorService) obj).shutdown();
    }
}
