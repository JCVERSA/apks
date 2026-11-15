package com.yandex.mobile.ads.impl;

import defpackage.e74;
import defpackage.y45;
import java.util.Set;
import kotlin.jvm.internal.Lambda;

final class ah1 extends Lambda implements e74 {
    final Set<f5> b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ah1(Set<? extends f5> set) {
        super(1);
        this.b = set;
    }

    @Override
    public final Object invoke(Object obj) {
        e5 e5Var = (e5) obj;
        y45.j(e5Var, "it");
        return Boolean.valueOf(this.b.contains(e5Var.a()));
    }
}
