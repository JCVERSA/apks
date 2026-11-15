package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.view.View;
import defpackage.y45;
import java.util.ArrayList;

public final class k81 extends z81 implements b02 {
    private final j81 N;
    private final sj0 O;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k81(Context context, j81 j81Var, sj0 sj0Var, kl klVar, e51 e51Var) {
        super(context, klVar, e51Var);
        y45.j(context, "context");
        y45.j(j81Var, "nativeCompositeAd");
        y45.j(sj0Var, "imageProvider");
        y45.j(klVar, "binderConfiguration");
        y45.j(e51Var, "nativeAdControllers");
        this.N = j81Var;
        this.O = sj0Var;
        a(a(klVar.d().a()));
    }

    @Override
    public final void a(k71 k71Var, uo uoVar) throws e61 {
        y45.j(k71Var, "viewBinder");
        y45.j(uoVar, "clickConnector");
        View viewD = k71Var.d();
        r71 r71Var = new r71(k71Var);
        sj0 sj0Var = this.O;
        dp.a.getClass();
        a(viewD, sj0Var, r71Var, dp.a.a(), uoVar);
    }

    @Override
    public final void b(ut utVar) {
        y45.j(utVar, "listener");
        this.N.b(utVar);
    }

    @Override
    public final ArrayList d() {
        return new ArrayList(this.N.e());
    }

    @Override
    public final rt getAdAssets() {
        return this.N.getAdAssets();
    }

    @Override
    public final gr1 getAdType() {
        return this.N.getAdType();
    }

    @Override
    public final String getInfo() {
        return this.N.getInfo();
    }

    @Override
    public final yt getNativeAdVideoController() {
        return super.getNativeAdVideoController();
    }

    @Override
    public final void loadImages() {
        this.N.loadImages();
    }

    @Override
    public final void b(k71 k71Var, uo uoVar) throws e61 {
        y45.j(k71Var, "viewProvider");
        y45.j(uoVar, "clickConnector");
        this.N.b(k71Var, uoVar);
    }

    @Override
    public final void b(k71 k71Var) throws e61 {
        y45.j(k71Var, "viewProvider");
        this.N.b(k71Var);
    }

    @Override
    public final void a(k71 k71Var) throws e61 {
        y45.j(k71Var, "viewProvider");
        View viewD = k71Var.d();
        r71 r71Var = new r71(k71Var);
        sj0 sj0Var = this.O;
        dp.a.getClass();
        a(viewD, sj0Var, r71Var, dp.a.a());
    }

    @Override
    public final void b(st stVar) {
        super.a(stVar);
    }

    @Override
    public final void a(ut utVar) {
        y45.j(utVar, "listener");
        this.N.a(utVar);
    }

    @Override
    public final void a(st stVar) {
        this.N.a(stVar);
    }

    private final x71 a(o3 o3Var) {
        x71 x71Var = new x71(o3Var, ca1.e.a(), e(), a(), new v71(), null);
        x71Var.a(f81.c);
        return x71Var;
    }
}
