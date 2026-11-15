package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class u7 {
    private final va a;
    private final sa b;

    public u7(va vaVar, sa saVar) {
        y45.j(vaVar, "adVisibilityValidator");
        y45.j(saVar, "adViewRenderingValidator");
        this.a = vaVar;
        this.b = saVar;
    }

    public final boolean a() {
        return this.a.a() && this.b.a();
    }
}
