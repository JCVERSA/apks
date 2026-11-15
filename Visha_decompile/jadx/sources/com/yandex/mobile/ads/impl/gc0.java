package com.yandex.mobile.ads.impl;

import defpackage.af5;
import defpackage.xq8;
import defpackage.y45;
import kotlin.jvm.internal.MutablePropertyReference1Impl;

public final class gc0 implements hc0 {
    static final af5[] b = {xq8.f(new MutablePropertyReference1Impl(gc0.class, "forceImpressionTrackingListenerReference", "getForceImpressionTrackingListenerReference()Lcom/monetization/ads/base/impression/ForceImpressionTrackingListener;", 0))};
    private final go1 a = ho1.a();

    @Override
    public final void a() {
        hc0 hc0Var = (hc0) this.a.getValue(this, b[0]);
        if (hc0Var != null) {
            hc0Var.a();
        }
    }

    public final void a(hc0 hc0Var) {
        y45.j(hc0Var, "trackingListener");
        this.a.setValue(this, b[0], hc0Var);
    }
}
