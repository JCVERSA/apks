package com.google.android.gms.internal.ads;

import defpackage.f8i;
import defpackage.h8i;
import defpackage.j8i;
import defpackage.k8i;
import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

public final class l8 extends j8i implements h8i {
    public final ScheduledExecutorService c;

    public l8(ScheduledExecutorService scheduledExecutorService) {
        super(scheduledExecutorService);
        scheduledExecutorService.getClass();
        this.c = scheduledExecutorService;
    }

    @Override
    public final f8i schedule(Callable callable, long j, TimeUnit timeUnit) {
        zzgct zzgctVar = new zzgct(callable);
        return new k8i(zzgctVar, this.c.schedule(zzgctVar, j, timeUnit));
    }

    @Override
    public final ScheduledFuture schedule(Runnable runnable, long j, TimeUnit timeUnit) {
        ScheduledExecutorService scheduledExecutorService = this.c;
        zzgct zzgctVarZze = zzgct.zze(runnable, null);
        return new k8i(zzgctVarZze, scheduledExecutorService.schedule(zzgctVarZze, j, timeUnit));
    }

    @Override
    public final ScheduledFuture scheduleAtFixedRate(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        zzgci zzgciVar = new zzgci(runnable);
        return new k8i(zzgciVar, this.c.scheduleAtFixedRate(zzgciVar, j, j2, timeUnit));
    }

    @Override
    public final ScheduledFuture scheduleWithFixedDelay(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        zzgci zzgciVar = new zzgci(runnable);
        return new k8i(zzgciVar, this.c.scheduleWithFixedDelay(zzgciVar, j, j2, timeUnit));
    }
}
