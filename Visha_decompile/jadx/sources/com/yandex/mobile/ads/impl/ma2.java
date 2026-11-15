package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class ma2<T> implements cd2 {
    private final mg2 a;
    private final wc2<T> b;
    private final tg2 c;
    private boolean d;

    public ma2(sg2 sg2Var, ng2 ng2Var, wc2 wc2Var) {
        this(sg2Var, ng2Var, wc2Var, new tg2(sg2Var));
    }

    @Override
    public final void a(long j, long j2) {
        if (this.d || j2 <= 0 || !this.c.a()) {
            return;
        }
        this.d = true;
        this.a.a(this.b.getVolume(), j);
    }

    public ma2(sg2 sg2Var, ng2 ng2Var, wc2 wc2Var, tg2 tg2Var) {
        y45.j(sg2Var, "videoViewProvider");
        y45.j(ng2Var, "videoTracker");
        y45.j(wc2Var, "videoAdPlayer");
        y45.j(tg2Var, "singlePercentAreaValidator");
        this.a = ng2Var;
        this.b = wc2Var;
        this.c = tg2Var;
    }
}
