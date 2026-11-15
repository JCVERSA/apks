package com.yandex.mobile.ads.impl;

import android.widget.ImageView;
import defpackage.y45;

public final class of2 {
    private final ac1 a;
    private final nl1 b;

    public of2(ac1 ac1Var, nl1 nl1Var) {
        y45.j(ac1Var, "controlsConfigurator");
        y45.j(nl1Var, "progressBarConfigurator");
        this.a = ac1Var;
        this.b = nl1Var;
    }

    public final void a(yb1 yb1Var) {
        y45.j(yb1Var, "videoView");
        yb1Var.c().setVisibility(0);
        af2 af2VarB = yb1Var.b();
        this.b.getClass();
        y45.j(af2VarB, "placeholderView");
        af2VarB.b().setVisibility(8);
        ImageView imageViewA = af2VarB.a();
        if (imageViewA != null) {
            imageViewA.setVisibility(8);
        }
        this.a.a(yb1Var.a().a());
    }
}
