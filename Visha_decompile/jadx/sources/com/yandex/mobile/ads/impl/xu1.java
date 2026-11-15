package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class xu1 implements ir1<ju1> {
    private final hr1<ju1> a;
    private final ui2 b;

    public xu1(sp1 sp1Var) {
        this(sp1Var, vc1.a(sp1Var), new ui2());
    }

    @Override
    public final ju1 a(xc1 xc1Var) {
        y45.j(xc1Var, "networkResponse");
        this.b.getClass();
        return this.a.a(ui2.a(xc1Var));
    }

    public xu1(sp1 sp1Var, hr1<ju1> hr1Var, ui2 ui2Var) {
        y45.j(sp1Var, "reporter");
        y45.j(hr1Var, "sdkConfigurationResponseParser");
        y45.j(ui2Var, "volleyMapper");
        this.a = hr1Var;
        this.b = ui2Var;
    }
}
