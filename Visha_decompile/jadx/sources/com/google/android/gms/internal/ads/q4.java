package com.google.android.gms.internal.ads;

import defpackage.mrh;
import defpackage.ulg;
import java.util.Map;

public final class q4 implements mrh {
    public final Map b;
    public final o0 c;

    public q4(o0 o0Var, Map map) {
        this.b = map;
        this.c = o0Var;
    }

    @Override
    public final void h(zzffn zzffnVar, String str) {
        Map map = this.b;
        if (map.containsKey(zzffnVar)) {
            this.c.c(((ulg) map.get(zzffnVar)).a);
        }
    }

    @Override
    public final void o(zzffn zzffnVar, String str, Throwable th) {
        Map map = this.b;
        if (map.containsKey(zzffnVar)) {
            this.c.c(((ulg) map.get(zzffnVar)).c);
        }
    }

    @Override
    public final void p(zzffn zzffnVar, String str) {
    }

    @Override
    public final void q(zzffn zzffnVar, String str) {
        Map map = this.b;
        if (map.containsKey(zzffnVar)) {
            this.c.c(((ulg) map.get(zzffnVar)).b);
        }
    }
}
