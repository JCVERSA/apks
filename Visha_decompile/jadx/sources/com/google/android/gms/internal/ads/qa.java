package com.google.android.gms.internal.ads;

import defpackage.pui;
import defpackage.qui;

public final class qa extends pui {
    @Override
    public final Object a(Object obj) {
        ia iaVar = (ia) obj;
        qui quiVar = iaVar.zzt;
        if (quiVar != qui.c()) {
            return quiVar;
        }
        qui quiVarF = qui.f();
        iaVar.zzt = quiVarF;
        return quiVarF;
    }

    @Override
    public final Object b() {
        return qui.f();
    }

    @Override
    public final Object c(Object obj) {
        qui quiVar = (qui) obj;
        quiVar.h();
        return quiVar;
    }

    @Override
    public final void d(Object obj, int i, int i2) {
        ((qui) obj).j((i << 3) | 5, Integer.valueOf(i2));
    }

    @Override
    public final void e(Object obj, int i, long j) {
        ((qui) obj).j((i << 3) | 1, Long.valueOf(j));
    }

    @Override
    public final void f(Object obj, int i, Object obj2) {
        ((qui) obj).j((i << 3) | 3, (qui) obj2);
    }

    @Override
    public final void g(Object obj, int i, zzgwn zzgwnVar) {
        ((qui) obj).j((i << 3) | 2, zzgwnVar);
    }

    @Override
    public final void h(Object obj, int i, long j) {
        ((qui) obj).j(i << 3, Long.valueOf(j));
    }

    @Override
    public final void i(Object obj) {
        ((ia) obj).zzt.h();
    }

    @Override
    public final void j(Object obj, Object obj2) {
        ((ia) obj).zzt = (qui) obj2;
    }
}
