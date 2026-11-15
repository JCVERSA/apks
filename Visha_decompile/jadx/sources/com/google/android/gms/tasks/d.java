package com.google.android.gms.tasks;

import defpackage.mhj;
import defpackage.ne7;
import defpackage.xda;
import java.util.concurrent.Executor;

public final class d implements mhj {
    public final Executor a;
    public final Object b = new Object();
    public ne7 c;

    public d(Executor executor, ne7 ne7Var) {
        this.a = executor;
        this.c = ne7Var;
    }

    @Override
    public final void c(xda xdaVar) {
        if (xdaVar.o()) {
            synchronized (this.b) {
                try {
                    if (this.c == null) {
                        return;
                    }
                    this.a.execute(new zzg(this));
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }
}
