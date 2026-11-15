package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class da2<T> implements cd2 {
    private final zb2<T> a;
    private final mg2 b;
    private final pc2<T> c;
    private final tg2 d;
    private boolean e;

    public da2(zb2 zb2Var, sg2 sg2Var, ng2 ng2Var, pc2 pc2Var) {
        this(zb2Var, sg2Var, ng2Var, pc2Var, new tg2(sg2Var));
    }

    @Override
    public final void a(long j, long j2) {
        if (this.e || j2 <= 0 || !this.d.a()) {
            return;
        }
        this.e = true;
        this.b.h();
        this.c.i(this.a);
    }

    public da2(zb2 zb2Var, sg2 sg2Var, ng2 ng2Var, pc2 pc2Var, tg2 tg2Var) {
        y45.j(zb2Var, "videoAdInfo");
        y45.j(sg2Var, "videoViewProvider");
        y45.j(ng2Var, "videoTracker");
        y45.j(pc2Var, "playbackEventsListener");
        y45.j(tg2Var, "videoVisibleAreaValidator");
        this.a = zb2Var;
        this.b = ng2Var;
        this.c = pc2Var;
        this.d = tg2Var;
    }
}
