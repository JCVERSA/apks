package com.yandex.mobile.ads.impl;

import defpackage.af5;
import defpackage.y45;

public final class ua implements va {
    static final af5[] b = {ta.a(ua.class, "adViewReference", "getAdViewReference()Lcom/monetization/ads/banner/InternalAdView;", 0)};
    private final go1 a;

    public ua(np0 np0Var) {
        y45.j(np0Var, "adView");
        this.a = ho1.a(np0Var);
    }

    @Override
    public final boolean a() {
        np0 np0Var = (np0) this.a.getValue(this, b[0]);
        return np0Var != null && wh2.b(np0Var) >= 1;
    }

    @Override
    public final boolean b() {
        np0 np0Var = (np0) this.a.getValue(this, b[0]);
        return (np0Var == null || wh2.d(np0Var)) ? false : true;
    }
}
