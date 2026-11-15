package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.view.View;
import defpackage.y45;

public final class v92<T> {
    private final wc2<T> a;
    private final sg2 b;
    private final zb2<T> c;
    private final qd2 d;
    private final mg2 e;
    private final g5 f;
    private final jd2 g;
    private final gd2 h;
    private final oc2<T> i;

    public v92(Context context, o3 o3Var, wc2 wc2Var, sg2 sg2Var, zb2 zb2Var, uf2 uf2Var, qd2 qd2Var, ng2 ng2Var, dd2 dd2Var, pc2 pc2Var, o8 o8Var) {
        y45.j(context, "context");
        y45.j(o3Var, "adConfiguration");
        y45.j(wc2Var, "videoAdPlayer");
        y45.j(sg2Var, "videoViewProvider");
        y45.j(zb2Var, "videoAdInfo");
        y45.j(uf2Var, "videoRenderValidator");
        y45.j(qd2Var, "videoAdStatusController");
        y45.j(ng2Var, "videoTracker");
        y45.j(dd2Var, "progressEventsObservable");
        y45.j(pc2Var, "playbackEventsListener");
        this.a = wc2Var;
        this.b = sg2Var;
        this.c = zb2Var;
        this.d = qd2Var;
        this.e = ng2Var;
        g5 g5Var = new g5();
        this.f = g5Var;
        jd2 jd2Var = new jd2(context, o3Var, o8Var, zb2Var, g5Var, qd2Var, sg2Var, uf2Var, ng2Var);
        this.g = jd2Var;
        gd2 gd2Var = new gd2(wc2Var, dd2Var);
        this.h = gd2Var;
        this.i = new oc2<>(zb2Var, wc2Var, gd2Var, jd2Var, qd2Var, g5Var, ng2Var, pc2Var);
        new fd2(context, zb2Var, sg2Var, qd2Var, ng2Var, wc2Var, pc2Var).a(dd2Var);
    }

    public final void a() {
        this.h.b();
        this.a.a((oc2) null);
        this.d.b();
        this.g.e();
        this.f.a();
    }

    public final void b() {
        this.h.b();
        this.a.pauseAd();
    }

    public final void c() {
        this.a.c();
    }

    public final void d() {
        this.a.a(this.i);
        this.a.a(this.c);
        g5 g5Var = this.f;
        f5 f5Var = f5.x;
        bk.a(g5Var, f5Var, "adLoadingPhaseType", f5Var, null);
        View view = this.b.getView();
        if (view != null) {
            this.e.a(view, this.b.a());
        }
        this.g.f();
        this.d.b(pd2.c);
    }

    public final void e() {
        this.a.resumeAd();
    }

    public final void f() {
        this.a.a();
    }

    public final void a(ld2.b bVar) {
        y45.j(bVar, "reportParameterManager");
        this.g.a(bVar);
    }

    public final void a(ld2.a aVar) {
        y45.j(aVar, "reportParameterManager");
        this.g.a(aVar);
    }
}
