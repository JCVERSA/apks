package com.google.android.gms.internal.play_billing;

import defpackage.ofg;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

public final class p extends n {
    public ofg i;
    public ScheduledFuture j;

    public p(ofg ofgVar) {
        this.i = ofgVar;
    }

    public static ofg y(ofg ofgVar, long j, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        p pVar = new p(ofgVar);
        zzdm zzdmVar = new zzdm(pVar);
        pVar.j = scheduledExecutorService.schedule(zzdmVar, 28500L, timeUnit);
        ofgVar.b(zzdmVar, zzda.INSTANCE);
        return pVar;
    }

    @Override
    public final String m() {
        ofg ofgVar = this.i;
        ScheduledFuture scheduledFuture = this.j;
        if (ofgVar == null) {
            return null;
        }
        String str = "inputFuture=[" + ofgVar.toString() + "]";
        if (scheduledFuture != null) {
            long delay = scheduledFuture.getDelay(TimeUnit.MILLISECONDS);
            if (delay > 0) {
                return str + ", remaining delay=[" + delay + " ms]";
            }
        }
        return str;
    }

    @Override
    public final void o() {
        ofg ofgVar = this.i;
        if ((this.b instanceof d) & (ofgVar != null)) {
            Object obj = this.b;
            ofgVar.cancel((obj instanceof d) && ((d) obj).a);
        }
        ScheduledFuture scheduledFuture = this.j;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
        }
        this.i = null;
        this.j = null;
    }
}
