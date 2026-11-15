package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.Map;

public final class r21 implements dh0 {
    private final m21 a;
    private final dh0 b;

    public r21(m21 m21Var, dh0 dh0Var) {
        y45.j(m21Var, "mraidController");
        y45.j(dh0Var, "htmlWebViewListener");
        this.a = m21Var;
        this.b = dh0Var;
    }

    @Override
    public final void a(w3 w3Var) {
        y45.j(w3Var, "adFetchRequestError");
        this.b.a(w3Var);
    }

    @Override
    public final void a(yf1 yf1Var, Map map) {
        y45.j(yf1Var, "webView");
        y45.j(map, "trackingParameters");
        this.a.a(yf1Var, map);
    }

    @Override
    public final void a(String str) throws k21 {
        y45.j(str, "url");
        this.a.b(str);
    }

    @Override
    public final void a() {
        this.a.c();
    }

    @Override
    public final void a(boolean z) {
        this.a.a(z);
    }
}
