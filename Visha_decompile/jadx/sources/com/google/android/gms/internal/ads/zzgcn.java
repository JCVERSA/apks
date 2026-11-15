package com.google.android.gms.internal.ads;

import defpackage.im5;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

final class zzgcn implements Runnable {
    o8 zza;

    public zzgcn(o8 o8Var) {
        this.zza = o8Var;
    }

    @Override
    public final void run() {
        im5 im5Var;
        o8 o8Var = this.zza;
        if (o8Var == null || (im5Var = o8Var.b) == null) {
            return;
        }
        this.zza = null;
        if (im5Var.isDone()) {
            o8Var.zzn(im5Var);
            return;
        }
        try {
            ScheduledFuture scheduledFuture = o8Var.c;
            o8Var.c = null;
            String str = "Timed out";
            if (scheduledFuture != null) {
                try {
                    long jAbs = Math.abs(scheduledFuture.getDelay(TimeUnit.MILLISECONDS));
                    if (jAbs > 10) {
                        str = "Timed out (timeout delayed by " + jAbs + " ms after scheduled time)";
                    }
                } catch (Throwable th) {
                    o8Var.zzd(new zzgco(str, null));
                    throw th;
                }
            }
            o8Var.zzd(new zzgco(str + ": " + im5Var.toString(), null));
            im5Var.cancel(true);
        } catch (Throwable th2) {
            im5Var.cancel(true);
            throw th2;
        }
    }
}
