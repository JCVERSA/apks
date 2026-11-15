package com.google.android.gms.internal.play_billing;

import defpackage.ofg;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

final class zzdm implements Runnable {
    p zza;

    public zzdm(p pVar) {
        this.zza = pVar;
    }

    @Override
    public final void run() {
        ofg ofgVar;
        p pVar = this.zza;
        if (pVar == null || (ofgVar = pVar.i) == null) {
            return;
        }
        this.zza = null;
        if (ofgVar.isDone()) {
            pVar.r(ofgVar);
            return;
        }
        try {
            ScheduledFuture scheduledFuture = pVar.j;
            pVar.j = null;
            String str = "Timed out";
            if (scheduledFuture != null) {
                try {
                    long jAbs = Math.abs(scheduledFuture.getDelay(TimeUnit.MILLISECONDS));
                    if (jAbs > 10) {
                        str = "Timed out (timeout delayed by " + jAbs + " ms after scheduled time)";
                    }
                } catch (Throwable th) {
                    pVar.q(new zzdn(str, null));
                    throw th;
                }
            }
            pVar.q(new zzdn(str + ": " + ofgVar.toString(), null));
            ofgVar.cancel(true);
        } catch (Throwable th2) {
            ofgVar.cancel(true);
            throw th2;
        }
    }
}
