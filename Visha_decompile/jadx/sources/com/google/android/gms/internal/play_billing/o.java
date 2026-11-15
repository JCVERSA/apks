package com.google.android.gms.internal.play_billing;

import defpackage.o8g;
import defpackage.odg;
import defpackage.ofg;
import defpackage.tcg;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

public abstract class o extends tcg {
    public static ofg a(Object obj) {
        return new odg(obj);
    }

    public static ofg b(ofg ofgVar, long j, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        return ofgVar.isDone() ? ofgVar : p.y(ofgVar, 28500L, timeUnit, scheduledExecutorService);
    }

    public static void c(ofg ofgVar, o8g o8gVar, Executor executor) {
        ofgVar.b(new zzde(ofgVar, o8gVar), executor);
    }
}
