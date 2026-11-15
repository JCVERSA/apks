package com.yandex.mobile.ads.impl;

import android.view.View;
import defpackage.y45;
import java.util.List;

public final class cc1 implements sg2 {
    private final rg2 a;

    public cc1(rg2 rg2Var) {
        y45.j(rg2Var, "videoViewAdapter");
        this.a = rg2Var;
    }

    @Override
    public final List<xb2> a() {
        return defpackage.y71.k();
    }

    @Override
    public final View getView() {
        return this.a.b();
    }
}
