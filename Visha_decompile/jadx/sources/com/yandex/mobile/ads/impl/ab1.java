package com.yandex.mobile.ads.impl;

import android.view.TextureView;
import defpackage.y45;

public final class ab1 implements gb1 {
    private final sa1 a;
    private final yb1 b;

    public ab1(sa1 sa1Var, yb1 yb1Var) {
        y45.j(sa1Var, "player");
        y45.j(yb1Var, "videoView");
        this.a = sa1Var;
        this.b = yb1Var;
    }

    @Override
    public final void a() {
        this.b.b().b().clearAnimation();
        this.a.a((TextureView) null);
    }

    @Override
    public final void b() {
        this.a.a(this.b.c());
    }
}
