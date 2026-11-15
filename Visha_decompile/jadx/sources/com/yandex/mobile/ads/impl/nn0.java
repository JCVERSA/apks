package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class nn0 implements ff1 {
    private final vn0 a;
    private final go0 b;

    public nn0(vn0 vn0Var, go0 go0Var, a00 a00Var) {
        y45.j(vn0Var, "instreamInteractionTracker");
        y45.j(go0Var, "videoAd");
        y45.j(a00Var, "customAdClickHandler");
        this.a = vn0Var;
        this.b = go0Var;
    }

    @Override
    public final void a(String str) {
        y45.j(str, "url");
        new mn0(this.a);
        throw null;
    }
}
