package com.google.android.gms.tasks;

import defpackage.eoj;
import defpackage.mhj;
import defpackage.xda;
import defpackage.xh1;
import java.util.concurrent.Executor;

public final class b implements mhj {
    public final Executor a;
    public final xh1 b;
    public final eoj c;

    public b(Executor executor, xh1 xh1Var, eoj eojVar) {
        this.a = executor;
        this.b = xh1Var;
        this.c = eojVar;
    }

    @Override
    public final void c(xda xdaVar) {
        this.a.execute(new zzc(this, xdaVar));
    }
}
