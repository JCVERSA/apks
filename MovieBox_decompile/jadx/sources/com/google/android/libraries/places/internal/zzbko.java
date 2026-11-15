package com.google.android.libraries.places.internal;

import java.util.logging.Level;

final class zzbko implements Thread.UncaughtExceptionHandler {
    final zzbma zza;

    zzbko(zzbma zzbmaVar) {
        this.zza = zzbmaVar;
    }

    @Override
    public final void uncaughtException(Thread thread, Throwable th2) {
        zzbma zzbmaVar = this.zza;
        zzbma.zza.logp(Level.SEVERE, "io.grpc.internal.ManagedChannelImpl$2", "uncaughtException", "[" + String.valueOf(zzbmaVar.zzc()) + "] Uncaught exception in the SynchronizationContext. Panic!", th2);
        this.zza.zzW(th2);
    }
}
