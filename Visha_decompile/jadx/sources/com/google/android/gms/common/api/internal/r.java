package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.Feature;
import defpackage.ozd;
import defpackage.p0e;
import defpackage.y0e;
import defpackage.zda;

public final class r extends y0e {
    public final d.a c;

    public r(d.a aVar, zda zdaVar) {
        super(4, zdaVar);
        this.c = aVar;
    }

    @Override
    public final void d(ozd ozdVar, boolean z) {
    }

    @Override
    public final boolean f(m mVar) {
        p0e p0eVar = (p0e) mVar.u().get(this.c);
        return p0eVar != null && p0eVar.a.f();
    }

    @Override
    public final Feature[] g(m mVar) {
        p0e p0eVar = (p0e) mVar.u().get(this.c);
        if (p0eVar == null) {
            return null;
        }
        return p0eVar.a.c();
    }

    @Override
    public final void h(m mVar) {
        p0e p0eVar = (p0e) mVar.u().remove(this.c);
        if (p0eVar == null) {
            this.b.e(Boolean.FALSE);
            return;
        }
        p0eVar.b.b(mVar.s(), this.b);
        p0eVar.a.a();
    }
}
