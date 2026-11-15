package com.google.android.libraries.places.internal;

import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;

final class zzbix implements zzbql {
    zzbix() {
    }

    @Override
    public final Object zza() {
        ScheduledExecutorService scheduledExecutorServiceNewScheduledThreadPool = Executors.newScheduledThreadPool(1, zzbjd.zzg("grpc-timer-%d", true));
        try {
            scheduledExecutorServiceNewScheduledThreadPool.getClass().getMethod("setRemoveOnCancelPolicy", Boolean.TYPE).invoke(scheduledExecutorServiceNewScheduledThreadPool, Boolean.TRUE);
        } catch (NoSuchMethodException unused) {
        } catch (RuntimeException e10) {
            throw e10;
        } catch (Exception e11) {
            throw new RuntimeException(e11);
        }
        return Executors.unconfigurableScheduledExecutorService(scheduledExecutorServiceNewScheduledThreadPool);
    }

    @Override
    public final void zzb(Object obj) {
        ((ScheduledExecutorService) obj).shutdown();
    }
}
