package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.view.View;
import defpackage.y45;

public abstract class x51 extends z81 implements q61 {
    private final m61 N;
    private sj0 O;
    private final x71 P;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x51(Context context, g41 g41Var, m61 m61Var, sj0 sj0Var, kl klVar, e51 e51Var) {
        super(context, klVar, e51Var);
        y45.j(context, "context");
        y45.j(g41Var, "nativeAd");
        y45.j(m61Var, "nativeAdManager");
        y45.j(sj0Var, "imageProvider");
        y45.j(klVar, "binderConfiguration");
        y45.j(e51Var, "nativeAdControllers");
        this.N = m61Var;
        this.O = sj0Var;
        x71 x71VarA = a(g41Var, klVar.d().a());
        this.P = x71VarA;
        a(x71VarA);
    }

    private final x71 a(g41 g41Var, o3 o3Var) {
        gr1 gr1VarG = g41Var.g();
        return new x71(o3Var, gr1VarG.a(), e(), a(), new bz1(g41Var, new er1(), new c8(), new jr()), null);
    }

    @Override
    public final void b(ut utVar) {
        y45.j(utVar, "listener");
        this.N.a(utVar);
    }

    @Override
    public final rt getAdAssets() {
        return this.N.a();
    }

    @Override
    public final gr1 getAdType() {
        return this.N.b();
    }

    @Override
    public final String getInfo() {
        return this.N.c();
    }

    @Override
    public final yt getNativeAdVideoController() {
        return super.getNativeAdVideoController();
    }

    @Override
    public final void loadImages() {
        this.N.d();
    }

    @Override
    public final void b(k71 k71Var, uo uoVar) throws e61 {
        y45.j(k71Var, "viewProvider");
        y45.j(uoVar, "clickConnector");
        View viewD = k71Var.d();
        r71 r71Var = new r71(k71Var);
        sj0 sj0Var = this.O;
        dp.a.getClass();
        a(viewD, sj0Var, r71Var, dp.a.a(), uoVar);
    }

    @Override
    public final void b(k71 k71Var) throws e61 {
        y45.j(k71Var, "viewProvider");
        this.P.a(k71Var.e());
        View viewD = k71Var.d();
        r71 r71Var = new r71(k71Var);
        sj0 sj0Var = this.O;
        dp.a.getClass();
        a(viewD, sj0Var, r71Var, dp.a.a());
    }

    @Override
    public final void a(ut utVar) {
        y45.j(utVar, "listener");
        this.N.b(utVar);
    }
}
