package com.google.android.gms.tasks;

import defpackage.eoj;
import defpackage.lf7;
import defpackage.mhj;
import defpackage.ne7;
import defpackage.re7;
import defpackage.xda;
import defpackage.xh1;
import java.util.concurrent.Executor;

public final class c implements lf7, re7, ne7, mhj {
    public final Executor a;
    public final xh1 b;
    public final eoj c;

    public c(Executor executor, xh1 xh1Var, eoj eojVar) {
        this.a = executor;
        this.b = xh1Var;
        this.c = eojVar;
    }

    @Override
    public final void a(Exception exc) {
        this.c.s(exc);
    }

    @Override
    public final void b() {
        this.c.u();
    }

    @Override
    public final void c(xda xdaVar) {
        this.a.execute(new zze(this, xdaVar));
    }

    @Override
    public final void onSuccess(Object obj) {
        this.c.t(obj);
    }
}
