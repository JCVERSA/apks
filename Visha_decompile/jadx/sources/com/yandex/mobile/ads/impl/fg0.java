package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.concurrent.Callable;

public final class fg0 implements Callable<eg0> {
    private final String a;
    private final hg0 b;

    public fg0(String str, ct ctVar, hg0 hg0Var) {
        y45.j(str, "checkHost");
        y45.j(ctVar, "defaultHostAccessChecker");
        y45.j(hg0Var, "hostAccessCheckerProvider");
        this.a = str;
        this.b = hg0Var;
    }

    @Override
    public final eg0 call() {
        boolean zA = this.b.a().a(this.a);
        sp0.a(new Object[0]);
        return new eg0(zA);
    }
}
