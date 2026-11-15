package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.m8;
import defpackage.g8i;
import defpackage.h8i;
import defpackage.j8i;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;

public abstract class m8 {
    public static g8i a(ExecutorService executorService) {
        if (executorService instanceof g8i) {
            return (g8i) executorService;
        }
        return executorService instanceof ScheduledExecutorService ? new l8((ScheduledExecutorService) executorService) : new j8i(executorService);
    }

    public static h8i b(ScheduledExecutorService scheduledExecutorService) {
        return new l8(scheduledExecutorService);
    }

    public static Executor c() {
        return zzgbg.INSTANCE;
    }

    public static Executor d(final Executor executor, final x7 x7Var) {
        executor.getClass();
        return executor == zzgbg.INSTANCE ? executor : new Executor() {
            @Override
            public final void execute(Runnable runnable) {
                m8.e(executor, x7Var, runnable);
            }
        };
    }

    public static void e(Executor executor, x7 x7Var, Runnable runnable) {
        try {
            executor.execute(runnable);
        } catch (RejectedExecutionException e) {
            x7Var.zzd(e);
        }
    }
}
