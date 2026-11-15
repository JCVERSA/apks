package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.util.List;

public final class rw1 implements o62 {
    private final sd1 a;
    private final to1 b;
    private final bl0 c;
    private final gh1 d;

    public rw1(e31 e31Var, to1 to1Var, bl0 bl0Var, gh1 gh1Var) {
        y45.j(e31Var, "noticeTrackingManager");
        y45.j(to1Var, "renderTrackingManager");
        y45.j(bl0Var, "indicatorManager");
        y45.j(gh1Var, "phoneStateTracker");
        this.a = e31Var;
        this.b = to1Var;
        this.c = bl0Var;
        this.d = gh1Var;
    }

    @Override
    public final void a(g71 g71Var) {
        y45.j(g71Var, "nativeAdViewAdapter");
        this.c.a(g71Var);
    }

    @Override
    public final void a(uk0 uk0Var) {
        y45.j(uk0Var, "impressionTrackingListener");
        this.a.a(uk0Var);
    }

    @Override
    public final void a(u91 u91Var) {
        y45.j(u91Var, "reportParameterManager");
        this.b.a(u91Var);
    }

    @Override
    public final void a(Context context, gh1.b bVar, g71 g71Var) {
        y45.j(context, "context");
        y45.j(bVar, "phoneStateListener");
        this.b.b();
        this.a.b();
        this.d.a(bVar);
        if (g71Var != null) {
            this.c.a(context, g71Var);
        }
    }

    @Override
    public final void a(Context context, gh1.b bVar) {
        y45.j(context, "context");
        y45.j(bVar, "phoneStateListener");
        this.b.c();
        this.a.a();
        this.d.b(bVar);
        this.c.a();
    }

    @Override
    public final void a(o8<?> o8Var, List<ey1> list) {
        y45.j(o8Var, "adResponse");
        y45.j(list, "showNotices");
        this.a.a(o8Var, list);
    }
}
