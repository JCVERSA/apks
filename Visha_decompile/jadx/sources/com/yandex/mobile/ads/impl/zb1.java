package com.yandex.mobile.ads.impl;

import android.view.TextureView;
import defpackage.y45;

public final class zb1 {
    private final sa1 a;

    public zb1(sa1 sa1Var) {
        y45.j(sa1Var, "videoAdPlayer");
        this.a = sa1Var;
    }

    public final void a(yb1 yb1Var) {
        y45.j(yb1Var, "nativeVideoView");
        TextureView textureViewC = yb1Var.c();
        this.a.a(textureViewC);
        textureViewC.setVisibility(0);
        yb1Var.a().setVisibility(0);
        yb1Var.b().setVisibility(0);
    }

    public final void b(yb1 yb1Var) {
        y45.j(yb1Var, "nativeVideoView");
        TextureView textureViewC = yb1Var.c();
        this.a.a((TextureView) null);
        textureViewC.setVisibility(8);
        yb1Var.a().setVisibility(8);
        yb1Var.b().setVisibility(8);
    }
}
