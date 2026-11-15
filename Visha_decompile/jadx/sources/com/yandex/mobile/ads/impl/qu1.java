package com.yandex.mobile.ads.impl;

import defpackage.e74;
import defpackage.y45;
import kotlin.jvm.internal.Lambda;

final class qu1 extends Lambda implements e74 {
    public static final qu1 b = new qu1();

    public qu1() {
        super(1);
    }

    public static String a(hn1 hn1Var) {
        y45.j(hn1Var, "it");
        return hn1Var.getKey() + "=" + hn1Var.getValue();
    }

    @Override
    public final Object invoke(Object obj) {
        return a((hn1) obj);
    }
}
