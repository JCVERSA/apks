package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class s51 {
    private final y4 a;
    private final q51 b;
    private final ec1 c;
    private final jx0 d;
    private final p62 e;

    public s51(y4 y4Var, q51 q51Var, ec1 ec1Var, jx0 jx0Var, p62 p62Var) {
        y45.j(y4Var, "adInfoReportDataProviderFactory");
        y45.j(q51Var, "eventControllerFactory");
        y45.j(ec1Var, "nativeViewRendererFactory");
        y45.j(jx0Var, "mediaViewAdapterFactory");
        y45.j(p62Var, "trackingManagerFactory");
        this.a = y4Var;
        this.b = q51Var;
        this.c = ec1Var;
        this.d = jx0Var;
        this.e = p62Var;
    }

    public final y4 a() {
        return this.a;
    }

    public final q51 b() {
        return this.b;
    }

    public final jx0 c() {
        return this.d;
    }

    public final ec1 d() {
        return this.c;
    }

    public final p62 e() {
        return this.e;
    }
}
