package com.google.android.gms.tasks;

import defpackage.mhj;
import defpackage.pe7;
import defpackage.xda;
import java.util.concurrent.Executor;

public final class e implements mhj {
    public final Executor a;
    public final Object b = new Object();
    public pe7 c;

    public e(Executor executor, pe7 pe7Var) {
        this.a = executor;
        this.c = pe7Var;
    }

    @Override
    public final void c(xda xdaVar) {
        synchronized (this.b) {
            try {
                if (this.c == null) {
                    return;
                }
                this.a.execute(new zzi(this, xdaVar));
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
