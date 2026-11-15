package com.google.android.gms.tasks;

import defpackage.lf7;
import defpackage.mhj;
import defpackage.xda;
import java.util.concurrent.Executor;

public final class g implements mhj {
    public final Executor a;
    public final Object b = new Object();
    public lf7 c;

    public g(Executor executor, lf7 lf7Var) {
        this.a = executor;
        this.c = lf7Var;
    }

    @Override
    public final void c(xda xdaVar) {
        if (xdaVar.q()) {
            synchronized (this.b) {
                try {
                    if (this.c == null) {
                        return;
                    }
                    this.a.execute(new zzm(this, xdaVar));
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }
}
