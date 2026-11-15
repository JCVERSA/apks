package com.yandex.mobile.ads.impl;

import android.view.View;
import defpackage.y45;

public final class ug2 implements td2 {
    private final sg2 a;

    public ug2(sg2 sg2Var) {
        y45.j(sg2Var, "videoViewProvider");
        this.a = sg2Var;
    }

    @Override
    public final boolean a() {
        View view = this.a.getView();
        return (view == null || wh2.d(view) || !wh2.a(view, 50)) ? false : true;
    }
}
