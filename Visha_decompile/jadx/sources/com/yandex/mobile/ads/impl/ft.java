package com.yandex.mobile.ads.impl;

import android.content.Context;
import androidx.annotation.MainThread;
import defpackage.y45;
import java.util.List;

@MainThread
public final class ft implements h82 {
    private final kt a;
    private final mu b;
    private final zn0 c;
    private final ul0 d;
    private final nb2 e;
    private final am0 f;
    private final lm0 g;
    private final po0 h;
    private final to0 i;

    public ft(Context context, bv1 bv1Var, et etVar, kt ktVar, mu muVar) {
        nm0 nm0Var = new nm0();
        qo0 qo0Var = new qo0();
        zn0 zn0Var = new zn0();
        int i = ul0.d;
        this(context, bv1Var, etVar, ktVar, muVar, nm0Var, qo0Var, zn0Var, ul0.a.a(), new nb2(), new am0());
    }

    public final void a(t70 t70Var, List<xb2> list) {
        y45.j(t70Var, "instreamAdView");
        y45.j(list, "friendlyOverlays");
        ft ftVarA = this.d.a(t70Var);
        if (!y45.e(this, ftVarA)) {
            if (ftVarA != null && ftVarA.d.a(ftVarA)) {
                ftVarA.i.d();
            }
            if (this.d.a(this)) {
                this.i.d();
            }
            this.d.a(t70Var, this);
        }
        this.g.a(this.a);
        this.h.a(this.b);
        this.i.a(t70Var, list);
    }

    public final void b() {
        this.i.c();
    }

    public final void c() {
        this.f.b();
    }

    public final void d() {
        this.f.c();
    }

    public final void e() {
        if (this.d.a(this)) {
            this.i.d();
        }
    }

    @Override
    public final void invalidateAdPlayer() {
        this.g.b(this.a);
        this.i.a();
    }

    public ft(Context context, bv1 bv1Var, et etVar, kt ktVar, mu muVar, nm0 nm0Var, qo0 qo0Var, zn0 zn0Var, ul0 ul0Var, nb2 nb2Var, am0 am0Var) {
        y45.j(context, "context");
        y45.j(bv1Var, "sdkEnvironmentModule");
        y45.j(etVar, "instreamAd");
        y45.j(ktVar, "instreamAdPlayer");
        y45.j(muVar, "videoPlayer");
        y45.j(nm0Var, "instreamAdPlayerReuseControllerFactory");
        y45.j(qo0Var, "instreamVideoPlayerReuseControllerFactory");
        y45.j(zn0Var, "playbackEventListener");
        y45.j(ul0Var, "bindingManager");
        y45.j(nb2Var, "playbackProxyListener");
        y45.j(am0Var, "customUiElementsHolder");
        this.a = ktVar;
        this.b = muVar;
        this.c = zn0Var;
        this.d = ul0Var;
        this.e = nb2Var;
        this.f = am0Var;
        nm0Var.getClass();
        this.g = nm0.a(this);
        qo0Var.getClass();
        this.h = qo0.a(this);
        to0 to0Var = new to0(context, bv1Var, etVar, new jm0(ktVar), new gf2(muVar), am0Var);
        this.i = to0Var;
        to0Var.a(zn0Var);
        to0Var.a(nb2Var);
    }

    public final void a() {
        this.h.b(this.b);
        this.i.b();
    }

    public final void a(lo0 lo0Var) {
        this.e.a(lo0Var);
    }

    public final void a(fm2 fm2Var) {
        this.c.a(fm2Var);
    }
}
