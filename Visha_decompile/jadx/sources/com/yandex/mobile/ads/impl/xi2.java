package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.Map;

public final class xi2<T> {
    private final ui2 a;
    private final bd1<T> b;

    public xi2(o3 o3Var, aj2<T> aj2Var, br1<T> br1Var, ui2 ui2Var, bd1<T> bd1Var) {
        y45.j(o3Var, "adConfiguration");
        y45.j(aj2Var, "volleyResponseBodyParser");
        y45.j(br1Var, "responseBodyParser");
        y45.j(ui2Var, "volleyMapper");
        y45.j(bd1Var, "responseParser");
        this.a = ui2Var;
        this.b = bd1Var;
    }

    public final o8<T> a(xc1 xc1Var, Map<String, String> map, ts tsVar) {
        y45.j(xc1Var, "networkResponse");
        y45.j(map, "headers");
        y45.j(tsVar, "responseAdType");
        this.a.getClass();
        return this.b.a(ui2.a(xc1Var), map, tsVar);
    }
}
