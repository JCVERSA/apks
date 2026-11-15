package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class so implements a82 {
    private final zm0 a;
    private final f6 b;

    public so(Context context, bv1 bv1Var, gt gtVar, co0 co0Var, zb2 zb2Var, mg2 mg2Var, nb2 nb2Var, vu vuVar, no0 no0Var, he2 he2Var, zm0 zm0Var, f6 f6Var) {
        y45.j(context, "context");
        y45.j(bv1Var, "sdkEnvironmentModule");
        y45.j(gtVar, "coreInstreamAdBreak");
        y45.j(co0Var, "instreamVastAdPlayer");
        y45.j(zb2Var, "videoAdInfo");
        y45.j(mg2Var, "videoTracker");
        y45.j(nb2Var, "playbackListener");
        y45.j(vuVar, "creativeAssetsProvider");
        y45.j(no0Var, "instreamVideoClicksProvider");
        y45.j(he2Var, "videoClicks");
        y45.j(zm0Var, "clickListener");
        y45.j(f6Var, "adPlayerVolumeConfigurator");
        this.a = zm0Var;
        this.b = f6Var;
    }

    @Override
    public final void a(t70 t70Var, ln0 ln0Var) {
        y45.j(t70Var, "instreamAdView");
        y45.j(ln0Var, "controlsState");
        t70Var.setOnClickListener(this.a);
        this.b.a(ln0Var.a(), ln0Var.d());
    }

    @Override
    public final void a(t70 t70Var) {
        y45.j(t70Var, "instreamAdView");
        t70Var.setOnClickListener(null);
        t70Var.setClickable(false);
    }
}
