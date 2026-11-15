package com.google.android.libraries.places.internal;

import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;

final class zzakc implements ThreadFactory {
    final ThreadFactory zza;
    final String zzb;
    final AtomicLong zzc;
    final Boolean zzd;

    zzakc(ThreadFactory threadFactory, String str, AtomicLong atomicLong, Boolean bool, Integer num, Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.zza = threadFactory;
        this.zzb = str;
        this.zzc = atomicLong;
        this.zzd = bool;
    }

    @Override
    public final Thread newThread(Runnable runnable) {
        Thread threadNewThread = this.zza.newThread(runnable);
        Objects.requireNonNull(threadNewThread);
        String str = this.zzb;
        if (str != null) {
            AtomicLong atomicLong = this.zzc;
            Objects.requireNonNull(atomicLong);
            threadNewThread.setName(String.format(Locale.ROOT, str, Long.valueOf(atomicLong.getAndIncrement())));
        }
        if (this.zzd != null) {
            threadNewThread.setDaemon(true);
        }
        return threadNewThread;
    }
}
