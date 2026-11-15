package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.List;
import java.util.Set;

public final class tn0 {
    private final kj0 a;
    private final g5 b;
    private final bh c;
    private final ck0 d;
    private final vu e;
    private final ek0 f;

    public interface a {
        void h(zb2<go0> zb2Var);
    }

    public tn0(kj0 kj0Var, g5 g5Var) {
        y45.j(kj0Var, "imageLoadManager");
        y45.j(g5Var, "adLoadingPhasesManager");
        this.a = kj0Var;
        this.b = g5Var;
        this.c = new bh();
        this.d = new ck0();
        this.e = new vu();
        this.f = new ek0();
    }

    public final void a(zb2 zb2Var, sj0 sj0Var, eo0 eo0Var) {
        y45.j(zb2Var, "videoAdInfo");
        y45.j(sj0Var, "imageProvider");
        y45.j(eo0Var, "loadListener");
        vu vuVar = this.e;
        uu uuVarB = zb2Var.b();
        vuVar.getClass();
        List<? extends ig<?>> listA = vu.a(uuVarB);
        Set<xj0> setA = this.f.a(listA, null);
        g5 g5Var = this.b;
        f5 f5Var = f5.q;
        bk.a(g5Var, f5Var, "adLoadingPhaseType", f5Var, null);
        this.a.a(setA, new un0(this, listA, sj0Var, eo0Var, zb2Var));
    }
}
