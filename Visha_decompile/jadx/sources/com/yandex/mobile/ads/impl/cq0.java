package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class cq0 {
    private final o8<?> a;
    private final e1 b;
    private final zr c;
    private final op d;

    public cq0(o8<?> o8Var, e1 e1Var, zr zrVar, op opVar) {
        y45.j(o8Var, "adResponse");
        y45.j(e1Var, "adActivityEventController");
        y45.j(zrVar, "contentCloseListener");
        y45.j(opVar, "closeAppearanceController");
        this.a = o8Var;
        this.b = e1Var;
        this.c = zrVar;
        this.d = opVar;
    }

    public final fq a(c51 c51Var, dw dwVar, f52 f52Var) {
        y45.j(c51Var, "nativeAdControlViewProvider");
        y45.j(dwVar, "debugEventsReporter");
        y45.j(f52Var, "timeProviderContainer");
        return new fq(this.a, this.b, this.d, this.c, c51Var, dwVar, f52Var);
    }
}
