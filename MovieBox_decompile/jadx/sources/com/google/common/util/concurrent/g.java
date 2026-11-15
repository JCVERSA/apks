package com.google.common.util.concurrent;

import java.util.concurrent.Executor;
import java.util.logging.Level;

public final class g {

    private static final q f30202c = new q(g.class);

    private a f30203a;

    private boolean f30204b;

    private static final class a {

        final Runnable f30205a;

        final Executor f30206b;

        a f30207c;

        a(Runnable runnable, Executor executor, a aVar) {
            this.f30205a = runnable;
            this.f30206b = executor;
            this.f30207c = aVar;
        }
    }

    private static void c(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (Exception e10) {
            f30202c.a().log(Level.SEVERE, "RuntimeException while executing runnable " + runnable + " with executor " + executor, (Throwable) e10);
        }
    }

    public void a(Runnable runnable, Executor executor) {
        com.google.common.base.m.p(runnable, "Runnable was null.");
        com.google.common.base.m.p(executor, "Executor was null.");
        synchronized (this) {
            try {
                if (this.f30204b) {
                    c(runnable, executor);
                } else {
                    this.f30203a = new a(runnable, executor, this.f30203a);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void b() {
        synchronized (this) {
            try {
                if (this.f30204b) {
                    return;
                }
                this.f30204b = true;
                a aVar = this.f30203a;
                a aVar2 = null;
                this.f30203a = null;
                while (aVar != null) {
                    a aVar3 = aVar.f30207c;
                    aVar.f30207c = aVar2;
                    aVar2 = aVar;
                    aVar = aVar3;
                }
                while (aVar2 != null) {
                    c(aVar2.f30205a, aVar2.f30206b);
                    aVar2 = aVar2.f30207c;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
