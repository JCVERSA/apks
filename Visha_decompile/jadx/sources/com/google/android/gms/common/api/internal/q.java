package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.Feature;
import defpackage.ozd;
import defpackage.p0e;
import defpackage.y0e;
import defpackage.zda;

public final class q extends y0e {
    public final p0e c;

    public q(p0e p0eVar, zda zdaVar) {
        super(3, zdaVar);
        this.c = p0eVar;
    }

    @Override
    public final void d(ozd ozdVar, boolean z) {
    }

    @Override
    public final boolean f(m mVar) {
        return this.c.a.f();
    }

    @Override
    public final Feature[] g(m mVar) {
        return this.c.a.c();
    }

    @Override
    public final void h(m mVar) {
        this.c.a.d(mVar.s(), this.b);
        d.a aVarB = this.c.a.b();
        if (aVarB != null) {
            mVar.u().put(aVarB, this.c);
        }
    }
}
