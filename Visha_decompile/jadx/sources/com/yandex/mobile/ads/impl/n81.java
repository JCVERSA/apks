package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.ArrayList;

public final class n81 implements g51 {
    private final z91.b a;

    public n81(z91.b bVar) {
        y45.j(bVar, "responseCreationListener");
        this.a = bVar;
    }

    @Override
    public final void a(w3 w3Var) {
        y45.j(w3Var, "error");
        this.a.a(w3Var);
    }

    @Override
    public final void a(q61 q61Var) {
        y45.j(q61Var, "nativeAd");
        this.a.a(q61Var);
    }

    @Override
    public final void a(ArrayList arrayList) {
        y45.j(arrayList, "nativeAds");
        this.a.a(w7.x());
    }

    @Override
    public final void a(k81 k81Var) {
        y45.j(k81Var, "sliderAd");
        this.a.a(k81Var);
    }
}
