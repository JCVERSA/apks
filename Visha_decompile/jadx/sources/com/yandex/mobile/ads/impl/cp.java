package com.yandex.mobile.ads.impl;

import android.view.View;
import com.hunantv.imgo.net.entity.AuthInfo;
import defpackage.y45;

public final class cp {
    private final ig<?> a;
    private final j3 b;
    private final g71 c;
    private final wo1 d;
    private final hc0 e;

    public cp(ig<?> igVar, j3 j3Var, g71 g71Var, wo1 wo1Var, hc0 hc0Var) {
        y45.j(igVar, "asset");
        y45.j(j3Var, "adClickable");
        y45.j(g71Var, "nativeAdViewAdapter");
        y45.j(wo1Var, "renderedTimer");
        y45.j(hc0Var, "forceImpressionTrackingListener");
        this.a = igVar;
        this.b = j3Var;
        this.c = g71Var;
        this.d = wo1Var;
        this.e = hc0Var;
    }

    public final View.OnClickListener a(vr0 vr0Var) {
        y45.j(vr0Var, AuthInfo.Component.CODE_LINK);
        return this.c.f().a(this.a, vr0Var, this.b, this.c, this.d, this.e);
    }
}
