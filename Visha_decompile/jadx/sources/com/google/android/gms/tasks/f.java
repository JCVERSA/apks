package com.google.android.gms.tasks;

import defpackage.mhj;
import defpackage.re7;
import defpackage.xda;
import java.util.concurrent.Executor;

public final class f implements mhj {
    public final Executor a;
    public final Object b = new Object();
    public re7 c;

    public f(Executor executor, re7 re7Var) {
        this.a = executor;
        this.c = re7Var;
    }

    @Override
    public final void c(xda xdaVar) {
        if (xdaVar.q() || xdaVar.o()) {
            return;
        }
        synchronized (this.b) {
            try {
                if (this.c == null) {
                    return;
                }
                this.a.execute(new zzk(this, xdaVar));
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
