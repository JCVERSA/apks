package com.google.android.libraries.places.internal;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

final class zzbiw implements zzbql {
    zzbiw() {
    }

    public final String toString() {
        return "grpc-default-executor";
    }

    @Override
    public final Object zza() {
        return Executors.newCachedThreadPool(zzbjd.zzg("grpc-default-executor-%d", true));
    }

    @Override
    public final void zzb(Object obj) {
        ((ExecutorService) obj).shutdown();
    }
}
