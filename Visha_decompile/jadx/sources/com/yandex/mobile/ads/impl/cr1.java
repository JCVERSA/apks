package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class cr1<T> implements br1<T> {
    private final aj2<T> a;
    private final ui2 b;

    public cr1(aj2 aj2Var) {
        this(aj2Var, new ui2());
    }

    @Override
    public final T a(wq1 wq1Var) {
        y45.j(wq1Var, "networkResponse");
        this.b.getClass();
        y45.j(wq1Var, "response");
        return this.a.a(new xc1(wq1Var.c(), wq1Var.a().a(), wq1Var.b(), true));
    }

    public cr1(aj2<T> aj2Var, ui2 ui2Var) {
        y45.j(aj2Var, "responseBodyParser");
        y45.j(ui2Var, "volleyMapper");
        this.a = aj2Var;
        this.b = ui2Var;
    }
}
