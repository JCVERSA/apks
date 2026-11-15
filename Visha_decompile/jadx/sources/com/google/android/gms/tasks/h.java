package com.google.android.gms.tasks;

import defpackage.eoj;
import defpackage.lf7;
import defpackage.mhj;
import defpackage.ne7;
import defpackage.q6a;
import defpackage.re7;
import defpackage.xda;
import java.util.concurrent.Executor;

public final class h implements lf7, re7, ne7, mhj {
    public final Executor a;
    public final q6a b;
    public final eoj c;

    public h(Executor executor, q6a q6aVar, eoj eojVar) {
        this.a = executor;
        this.b = q6aVar;
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
        this.a.execute(new zzo(this, xdaVar));
    }

    @Override
    public final void onSuccess(Object obj) {
        this.c.t(obj);
    }
}
