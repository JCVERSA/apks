package com.yandex.mobile.ads.impl;

import defpackage.af5;
import defpackage.y45;
import java.util.List;

public final class bn0 {
    static final af5[] c = {ta.a(bn0.class, "view", "getView()Lcom/monetization/ads/instream/view/ExtendedInstreamAdView;", 0)};
    private final List<xb2> a;
    private final go1 b;

    public bn0(t70 t70Var, List<xb2> list) {
        y45.j(t70Var, "instreamAdView");
        y45.j(list, "friendlyOverlays");
        this.a = list;
        this.b = ho1.a(t70Var);
    }

    public final List<xb2> a() {
        return this.a;
    }

    public final t70 b() {
        return (t70) this.b.getValue(this, c[0]);
    }
}
