package com.google.android.libraries.places.internal;

final class zzbof implements Thread.UncaughtExceptionHandler {
    zzbof(zzbpo zzbpoVar) {
    }

    @Override
    public final void uncaughtException(Thread thread, Throwable th2) {
        throw new zzbdq(zzbdo.zze(th2).zzg("Uncaught exception in the SynchronizationContext. Re-thrown."), null);
    }
}
