package com.yandex.mobile.ads.impl;

import defpackage.y45;
import defpackage.zfb;
import java.util.logging.Level;

public final class m42 implements Runnable {
    final l42 b;

    public m42(l42 l42Var) {
        this.b = l42Var;
    }

    @Override
    public final void run() {
        h42 h42VarB;
        long jA;
        while (true) {
            l42 l42Var = this.b;
            synchronized (l42Var) {
                h42VarB = l42Var.b();
            }
            if (h42VarB == null) {
                return;
            }
            k42 k42VarD = h42VarB.d();
            y45.g(k42VarD);
            l42 l42Var2 = this.b;
            l42 l42Var3 = l42.h;
            boolean zIsLoggable = l42.b.a().isLoggable(Level.FINE);
            if (zIsLoggable) {
                jA = k42VarD.h().d().a();
                i42.b(h42VarB, k42VarD, "starting");
            } else {
                jA = -1;
            }
            try {
                l42Var2.b(h42VarB);
                try {
                    zfb zfbVar = zfb.a;
                    if (zIsLoggable) {
                        i42.b(h42VarB, k42VarD, "finished run in " + i42.a(k42VarD.h().d().a() - jA));
                    }
                } catch (Throwable th) {
                    if (zIsLoggable) {
                        i42.b(h42VarB, k42VarD, "failed a run in " + i42.a(k42VarD.h().d().a() - jA));
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                l42Var2.d().execute(this);
                throw th2;
            }
        }
    }
}
