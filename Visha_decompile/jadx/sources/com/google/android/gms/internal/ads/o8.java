package com.google.android.gms.internal.ads;

import defpackage.im5;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

public final class o8 extends i8 {
    public im5 b;
    public ScheduledFuture c;

    public o8(im5 im5Var) {
        im5Var.getClass();
        this.b = im5Var;
    }

    public static im5 k(im5 im5Var, long j, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        o8 o8Var = new o8(im5Var);
        zzgcn zzgcnVar = new zzgcn(o8Var);
        o8Var.c = scheduledExecutorService.schedule(zzgcnVar, j, timeUnit);
        im5Var.addListener(zzgcnVar, zzgbg.INSTANCE);
        return o8Var;
    }

    @Override
    public final String zza() {
        im5 im5Var = this.b;
        ScheduledFuture scheduledFuture = this.c;
        if (im5Var == null) {
            return null;
        }
        String str = "inputFuture=[" + im5Var.toString() + "]";
        if (scheduledFuture != null) {
            long delay = scheduledFuture.getDelay(TimeUnit.MILLISECONDS);
            if (delay > 0) {
                return str + ", remaining delay=[" + delay + " ms]";
            }
        }
        return str;
    }

    @Override
    public final void zzb() {
        zzl(this.b);
        ScheduledFuture scheduledFuture = this.c;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
        }
        this.b = null;
        this.c = null;
    }
}
