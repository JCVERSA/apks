package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.view.View;
import defpackage.y45;
import org.mozilla.javascript.ES6Iterator;

public final class rg2 extends vg2<yb1, lb2> {
    private final o8<?> c;
    private final pg2 d;
    private final qb1 e;
    private final og2 f;
    private final eb1 g;
    private ng2 h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public rg2(bv1 bv1Var, yb1 yb1Var, xe2 xe2Var, o3 o3Var, o8 o8Var, pk0 pk0Var, db1 db1Var, t81 t81Var, e51 e51Var, sj0 sj0Var, yx1 yx1Var, pg2 pg2Var) {
        super(yb1Var);
        y45.j(bv1Var, "sdkEnvironmentModule");
        y45.j(yb1Var, "view");
        y45.j(xe2Var, "videoOptions");
        y45.j(o3Var, "adConfiguration");
        y45.j(o8Var, "adResponse");
        y45.j(pk0Var, "impressionEventsObservable");
        y45.j(db1Var, "nativeVideoPlaybackEventListener");
        y45.j(t81Var, "nativeForcePauseObserver");
        y45.j(e51Var, "nativeAdControllers");
        y45.j(sj0Var, "imageProvider");
        y45.j(pg2Var, "videoTrackerForceImpressionController");
        this.c = o8Var;
        this.d = pg2Var;
        Context context = yb1Var.getContext();
        y45.i(context, "getContext(...)");
        this.e = new qb1(context, this, xe2Var, o3Var, o8Var, pk0Var, db1Var, t81Var, sj0Var, yx1Var);
        this.f = new og2(bv1Var.d());
        this.g = e51Var.a();
        pk0Var.a(pg2Var);
    }

    @Override
    public final void a(View view) {
        yb1 yb1Var = (yb1) view;
        y45.j(yb1Var, "view");
        this.e.a(yb1Var);
        super.a(yb1Var);
    }

    @Override
    public final void b(View view, lb2 lb2Var) {
        yb1 yb1Var = (yb1) view;
        lb2 lb2Var2 = lb2Var;
        y45.j(yb1Var, "view");
        y45.j(lb2Var2, "video");
        zb2<kb1> zb2VarB = lb2Var2.b();
        og2 og2Var = this.f;
        Context context = yb1Var.getContext();
        y45.i(context, "getContext(...)");
        ng2 ng2VarA = og2Var.a(context, zb2VarB, ad2.e);
        this.h = ng2VarA;
        this.d.a(ng2VarA);
        eb1 eb1Var = this.g;
        Context context2 = yb1Var.getContext();
        y45.i(context2, "getContext(...)");
        eb1Var.a(context2, zb2VarB, this.c);
        this.e.a(yb1Var, lb2Var2, ng2VarA);
    }

    @Override
    public final void a(ig igVar, yg2 yg2Var, lb2 lb2Var) {
        lb2 lb2Var2 = lb2Var;
        y45.j(igVar, "asset");
        y45.j(yg2Var, "viewConfigurator");
        yb1 yb1VarB = b();
        if (yb1VarB != null) {
            yg2Var.a(yb1VarB, igVar);
            if (lb2Var2 == null || this.h == null) {
                return;
            }
            zb2<kb1> zb2VarB = lb2Var2.b();
            yg2Var.a((ig<?>) igVar, new ge2(yb1VarB, zb2VarB.b()));
            this.e.a(yb1VarB, zb2VarB);
        }
    }

    @Override
    public final void a() {
        ng2 ng2Var = this.h;
        if (ng2Var != null) {
            ng2Var.k();
        }
        this.d.a(null);
    }

    @Override
    public final boolean a(View view, lb2 lb2Var) {
        y45.j((yb1) view, "view");
        y45.j(lb2Var, ES6Iterator.VALUE_PROPERTY);
        return true;
    }
}
