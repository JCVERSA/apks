package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class fd2<T> {
    private final gn1 a;
    private final wl1 b;
    private final da2<T> c;
    private final ma2<T> d;
    private final bi2<T> e;

    public fd2(Context context, zb2 zb2Var, sg2 sg2Var, qd2 qd2Var, ng2 ng2Var, wc2 wc2Var, pc2 pc2Var) {
        y45.j(context, "context");
        y45.j(zb2Var, "videoAdInfo");
        y45.j(sg2Var, "videoViewProvider");
        y45.j(qd2Var, "adStatusController");
        y45.j(ng2Var, "videoTracker");
        y45.j(wc2Var, "videoAdPlayer");
        y45.j(pc2Var, "playbackEventsListener");
        this.a = new gn1(ng2Var);
        this.b = new wl1(context, zb2Var);
        this.c = new da2<>(zb2Var, sg2Var, ng2Var, pc2Var);
        this.d = new ma2<>(sg2Var, ng2Var, wc2Var);
        this.e = new bi2<>(zb2Var, sg2Var, qd2Var, ng2Var, pc2Var);
    }

    public final void a(dd2 dd2Var) {
        y45.j(dd2Var, "progressEventsObservable");
        dd2Var.a(this.a, this.b, this.d, this.c, this.e);
        dd2Var.a(this.e);
    }
}
