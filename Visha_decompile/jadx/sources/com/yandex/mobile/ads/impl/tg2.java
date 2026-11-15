package com.yandex.mobile.ads.impl;

import android.view.View;
import defpackage.y45;

public final class tg2 {
    private final sg2 a;

    public tg2(sg2 sg2Var) {
        y45.j(sg2Var, "videoViewProvider");
        this.a = sg2Var;
    }

    public final boolean a() {
        View view = this.a.getView();
        return (view == null || wh2.d(view) || wh2.b(view) < 1) ? false : true;
    }
}
